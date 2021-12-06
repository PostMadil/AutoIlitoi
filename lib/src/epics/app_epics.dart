import 'package:auto_ilitoi/src/actions/app_filter/index.dart';
import 'package:auto_ilitoi/src/actions/app_logic/index.dart';
import 'package:auto_ilitoi/src/actions/firebase_actions/index.dart';
import 'package:auto_ilitoi/src/actions/index.dart';
import 'package:auto_ilitoi/src/data/firebase_api.dart';
import 'package:auto_ilitoi/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class AppEpics {
  const AppEpics({required FirebaseApi firebaseApi}) : _firebaseApi = firebaseApi;

  final FirebaseApi _firebaseApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, Login$>(_login),
      TypedEpic<AppState, LogoutStart>(_logoutStart),
      TypedEpic<AppState, GetOrdersStart>(_getOrdersStart),
      TypedEpic<AppState, CreateOrderStart>(_createOrder),
      TypedEpic<AppState, InitializeAppStart>(_initializeAppStart),
      TypedEpic<AppState, UpdateOrderStart>(_updateOrderStart),
    ]);
  }

  Stream<AppAction> _login(Stream<Login$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((Login$ action) => Stream<Login$>.value(action)
            .asyncMap((Login$ action) => _firebaseApi.login(email: action.email, password: action.password))
            .expand((AppUser user) => <AppAction>[
                  Login.successful(user),
                  const GetOrders(),
                ])
            .onErrorReturnWith((Object error, StackTrace stackTrace) => Login.error(error))
            .doOnData(action.response));
  }

  Stream<AppAction> _logoutStart(Stream<LogoutStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((LogoutStart action) => Stream<LogoutStart>.value(action)
            .asyncMap((LogoutStart action) => _firebaseApi.logout())
            .map((_) => Logout.successful())
            .onErrorReturnWith((error, stackTrace) => Logout.error(error, stackTrace)));
  }

  Stream<AppAction> _getOrdersStart(Stream<GetOrdersStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetOrdersStart action) => Stream<GetOrdersStart>.value(action)
            .asyncMap((GetOrdersStart action) => _firebaseApi.getOrders())
            .expand((List<Order> orders) => <AppAction>[
                  GetOrders.successful(orders),
                  FilterOrders(store.state.filterOptions),
                ])
            .onErrorReturnWith((error, stackTrace) => GetOrders.error(error, stackTrace)));
  }

  Stream<AppAction> _createOrder(Stream<CreateOrderStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((CreateOrderStart action) => Stream<CreateOrderStart>.value(action)
            .asyncMap((CreateOrderStart action) => _firebaseApi.createOrder(action.details, action.items))
            .expand((_) => <AppAction>[
                  CreateOrder.successful(),
                  GetOrders(),
                ])
            .onErrorReturnWith((error, stackTrace) => CreateOrder.error(error, stackTrace)));
  }

  Stream<AppAction> _initializeAppStart(Stream<InitializeAppStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((InitializeAppStart action) => Stream<InitializeAppStart>.value(action)
            .asyncMap((InitializeAppStart action) => _firebaseApi.getCurrentUser())
            .expand((AppUser? user) => <AppAction>[
                  InitializeApp.successful(user),
                  if (user != null) GetOrdersStart(),
                ])
            .onErrorReturnWith((error, stackTrace) => InitializeApp.error(error, stackTrace)));
  }

  Stream<AppAction> _updateOrderStart(Stream<UpdateOrderStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((UpdateOrderStart action) => Stream<UpdateOrderStart>.value(action)
            .asyncMap((UpdateOrderStart action) => _firebaseApi.updateOrder(action.order))
            .expand((Order order) => <AppAction>[
                  UpdateOrder.successful(order),
                  GetOrders(),
                  SetSelectedOrder(order),
                  SetSelectedView(1),
                ])
            .onErrorReturnWith((error, stackTrace) => InitializeApp.error(error, stackTrace)));
  }
}
