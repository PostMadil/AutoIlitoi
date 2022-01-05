import 'package:auto_ilitoi/src/actions/app_filter/index.dart';
import 'package:auto_ilitoi/src/actions/app_logic/index.dart';
import 'package:auto_ilitoi/src/actions/firebase_actions/client_actions/index.dart';
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
      TypedEpic<AppState, InitializeAppStart>(_initializeAppStart),
      // -- CRUD ORDER
      TypedEpic<AppState, GetOrdersStart>(_getOrdersStart),
      TypedEpic<AppState, CreateOrderStart>(_createOrder),
      TypedEpic<AppState, UpdateOrderStart>(_updateOrderStart),
      TypedEpic<AppState, DeleteOrderStart>(_deleteOrderStart),
      // -- CRUD CLIENT
      TypedEpic<AppState, GetClientsStart>(_getClientsStart),
      TypedEpic<AppState, CreateClientStart>(_createClientStart),
      TypedEpic<AppState, UpdateClientStart>(_updateClientStart),
      TypedEpic<AppState, DeleteClientStart>(_deleteClientStart),
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
                  FilterOrders(),
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

  Stream<AppAction> _deleteOrderStart(Stream<DeleteOrderStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((DeleteOrderStart action) => Stream<DeleteOrderStart>.value(action)
            .asyncMap((DeleteOrderStart action) => _firebaseApi.deleteOrder(store.state.selectedOrder!.id))
            .map((String id) => DeleteOrder.successful(store.state.selectedOrder!))
            .onErrorReturnWith((error, stackTrace) => DeleteOrder.error(error, stackTrace)));
  }

  Stream<AppAction> _getClientsStart(Stream<GetClientsStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetClientsStart action) => Stream<GetClientsStart>.value(action)
            .asyncMap((GetClientsStart action) => _firebaseApi.getClients())
            .map((List<Client> clients) => GetClients.successful(clients))
            .onErrorReturnWith((error, stackTrace) => GetClients.error(error, stackTrace)));
  }

  Stream<AppAction> _createClientStart(Stream<CreateClientStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((CreateClientStart action) => Stream<CreateClientStart>.value(action)
            .asyncMap((CreateClientStart action) =>
                _firebaseApi.createClient(name: action.name, phoneNumber: action.phoneNumber))
            .map((Client client) => CreateClient.successful(client))
            .onErrorReturnWith((error, stackTrace) => CreateClient.error(error, stackTrace)));
  }

  Stream<AppAction> _updateClientStart(Stream<UpdateClientStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((UpdateClientStart action) => Stream<UpdateClientStart>.value(action)
            .asyncMap((UpdateClientStart action) => _firebaseApi.updateClient(action.client))
            .expand((_) => <AppAction>[
                  UpdateClient.successful(),
                  GetClients(),
                ])
            .onErrorReturnWith((error, stackTrace) => UpdateClient.error(error, stackTrace)));
  }

  Stream<AppAction> _deleteClientStart(Stream<DeleteClientStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((DeleteClientStart action) => Stream<DeleteClientStart>.value(action)
            .asyncMap(
                (DeleteClientStart action) => _firebaseApi.deleteClient(action.client, store.state.orders.toList()))
            .expand((Client client) => <AppAction>[DeleteClient.successful(client), GetOrders()])
            .onErrorReturnWith((error, stackTrace) => DeleteClient.error(error, stackTrace)));
  }
}
