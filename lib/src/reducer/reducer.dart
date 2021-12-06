import 'dart:developer';

import 'package:auto_ilitoi/src/actions/app_filter/index.dart';
import 'package:auto_ilitoi/src/actions/app_logic/index.dart';
import 'package:auto_ilitoi/src/actions/firebase_actions/index.dart';
import 'package:auto_ilitoi/src/models/index.dart';
import 'package:built_collection/built_collection.dart';
import 'package:redux/redux.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  //TypedReducer<AppState, GetBarsForSelectedStockStart>(_getBarsForSelectedStockStart),
  TypedReducer<AppState, dynamic>(_general),
  TypedReducer<AppState, LoginSuccessful>(_loginSuccessful),
  TypedReducer<AppState, LogoutSuccessful>(_logoutSuccessful),
  TypedReducer<AppState, GetOrdersSuccessful>(_getOrdersSuccessful),
  TypedReducer<AppState, InitializeAppSuccessful>(_initializeAppSuccessful),
  TypedReducer<AppState, SetSelectedOrder>(_setSelectedOrder),
  TypedReducer<AppState, SetSelectedView>(_setSelectedView),

  TypedReducer<AppState, SetOnlyPaid>(_setOnlyPaid),
  TypedReducer<AppState, SetOnlyUnpaid>(_setOnlyUnpaid),
  TypedReducer<AppState, SetHigherThan>(_setHigherThan),
  TypedReducer<AppState, SetHigherThanAmount>(_setHigherThanAmount),
  TypedReducer<AppState, SetLowerThan>(_setLowerThan),
  TypedReducer<AppState, SetLowerThanAmount>(_setLowerThanAmount),
  TypedReducer<AppState, FilterOrders>(_filterOrders),
  TypedReducer<AppState, SetSearchParam>(_setSearchParam),
]);

AppState _general(AppState state, dynamic action) {
  log(action.toString());
  return state;
}

AppState _loginSuccessful(AppState state, LoginSuccessful action) {
  return state.rebuild((AppStateBuilder b) => b.user = action.user.toBuilder());
}

AppState _logoutSuccessful(AppState state, LogoutSuccessful action) {
  return state.rebuild((AppStateBuilder b) => b.user = null);
}

AppState _getOrdersSuccessful(AppState state, GetOrdersSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b.orders = ListBuilder(action.orders);
    b.selectedOrders = ListBuilder(action.orders);

    double total = 0;
    double totalPaid = 0;
    double totalUnpaid = 0;
    List<int> ordersPerMonth = <int>[];
    List<double> moneyPerMonth = <double>[];
    List<String> months = <String>[];

    //---OBTAINING STATISTICS ---
    action.orders.forEach((element) {
      total += double.parse(element.total);
      if (element.paid) {
        totalPaid += double.parse(element.total);
      } else {
        totalUnpaid += double.parse(element.total);
      }
    });

    //---OBTAINING GRAPH DATA--- *MONTH INTERVALS*

    DateTime firstDate = DateTime.parse(action.orders.last.dateTime);
    firstDate = DateTime(firstDate.year, firstDate.month, firstDate.day - 1);
    DateTime lastDate = DateTime.now();
    log('firstDate: $firstDate');
    log('lastDate: $lastDate');
    while (firstDate.isBefore(lastDate)) {
      months.add(firstDate.toString());

      firstDate = DateTime(firstDate.year, firstDate.month + 1, 1);
    }
    months.add(lastDate.toString());

    log(months.toString());
    //---OBTAINING GRAPH DATA--- *ORDERS PER MONTH*
    //The start of the graph will have the value 0 as it is the begining of the sales
    ordersPerMonth.add(0);

    for (int i = 1; i < months.length; i++) {
      //Setting the DateTime(start,end) intervals
      int orderCounter = 0;
      DateTime endTime = DateTime.parse(months[i]);
      DateTime startTime = DateTime.parse(months[i - 1]);
      //Verify eachOrder if it is inside the interval
      action.orders.forEach((Order order) {
        DateTime orderDateTime = DateTime.parse(order.dateTime);
        if (orderDateTime.isBefore(endTime) && orderDateTime.isAfter(startTime)) {
          orderCounter++;
        }
      });
      ordersPerMonth.add(orderCounter);
    }
    log("OrdersPerMonth:" + ordersPerMonth.toString());
    //---OBTAINING GRAPH DATA--- *MONEY PER MONTH*
    //Zero represents the start of the activity
    moneyPerMonth.add(0);
    for (int i = 1; i < months.length; i++) {
      //Setting the DateTime(start,end) intervals
      double totalMoney = 0;
      DateTime endTime = DateTime.parse(months[i]);
      DateTime startTime = DateTime.parse(months[i - 1]);
      //Verify eachOrder if it is inside the interval
      action.orders.forEach((Order order) {
        DateTime orderDateTime = DateTime.parse(order.dateTime);
        if (orderDateTime.isBefore(endTime) && orderDateTime.isAfter(startTime)) {
          totalMoney += double.parse(order.total);
        }
      });
      moneyPerMonth.add(totalMoney);
    }
    log("MoneyPerMonth:" + moneyPerMonth.toString());
    b.statistics.moneyPerMonth = moneyPerMonth;
    b.statistics.ordersPerMonth = ordersPerMonth;
    b.statistics.months = months;
    b.statistics.total = total;
    b.statistics.totalUnpaid = totalUnpaid;
    b.statistics.totalPaid = totalPaid;
  });
}

AppState _initializeAppSuccessful(AppState state, InitializeAppSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    if (action.user != null) {
      b.user = action.user!.toBuilder();
    }
  });
}

AppState _setSelectedOrder(AppState state, SetSelectedOrder action) {
  return state.rebuild((AppStateBuilder b) {
    b.selectedOrder = action.order.toBuilder();
  });
}

AppState _setSelectedView(AppState state, SetSelectedView action) {
  return state.rebuild((AppStateBuilder b) {
    b.selectedView = action.selectedView;
  });
}

//------ SET PAID/UNPAID -----
AppState _setOnlyPaid(AppState state, SetOnlyPaid action) {
  return state.rebuild((AppStateBuilder b) {
    if (state.filterOptions.onlyPaid == false) {
      b.filterOptions.onlyPaid = true;
      b.filterOptions.onlyUnpaid = false;
    } else {
      log('here');
      b.filterOptions.onlyPaid = false;
    }
  });
}

AppState _setOnlyUnpaid(AppState state, SetOnlyUnpaid action) {
  return state.rebuild((AppStateBuilder b) {
    if (state.filterOptions.onlyUnpaid == false) {
      b.filterOptions.onlyUnpaid = true;
      b.filterOptions.onlyPaid = false;
    } else {
      log('here');
      b.filterOptions.onlyUnpaid = false;
    }
  });
}

// ----- SET HIGHER ------
AppState _setHigherThan(AppState state, SetHigherThan action) {
  return state.rebuild((AppStateBuilder b) {
    b.filterOptions.higherThan = !(b.filterOptions.higherThan!);
  });
}

AppState _setHigherThanAmount(AppState state, SetHigherThanAmount action) {
  return state.rebuild((AppStateBuilder b) {
    b.filterOptions.higherThanAmount = action.limit;
  });
}

// ----- SET LOWER ---
AppState _setLowerThan(AppState state, SetLowerThan action) {
  return state.rebuild((AppStateBuilder b) {
    b.filterOptions.lowerThan = !(b.filterOptions.lowerThan!);
  });
}

AppState _setLowerThanAmount(AppState state, SetLowerThanAmount action) {
  return state.rebuild((AppStateBuilder b) {
    b.filterOptions.lowerThanAmount = action.amount1;
  });
}

AppState _filterOrders(AppState state, FilterOrders action) {
  return state.rebuild((AppStateBuilder b) {
    List<Order> orders = <Order>[];

    orders.addAll(b.orders.build().toList());
    if (state.filterOptions.searchParam != '') {
      log('filtering only containing ${state.filterOptions.searchParam}...');
      List<Order> aux = <Order>[];
      orders.forEach((Order order) {
        if (order.name.toUpperCase().contains(state.filterOptions.searchParam.toUpperCase())) aux.add(order);
      });
      orders.clear();
      orders.addAll(aux);
    }
    if (state.filterOptions.onlyUnpaid) {
      log('filtering only unpaid...');
      List<Order> aux = <Order>[];
      orders.forEach((Order order) {
        if (!order.paid) aux.add(order);
      });
      orders.clear();
      orders.addAll(aux);
    }
    if (state.filterOptions.onlyPaid) {
      List<Order> aux = <Order>[];
      log('filtering only paid');
      orders.forEach((Order order) {
        if (order.paid) aux.add(order);
      });
      orders.clear();
      orders.addAll(aux);
    }
    if (state.filterOptions.higherThan) {
      List<Order> aux = <Order>[];
      orders.forEach((Order order) {
        if (double.parse(order.total) >= state.filterOptions.higherThanAmount) aux.add(order);
      });
      orders.clear();
      orders.addAll(aux);
    }
    if (state.filterOptions.lowerThan) {
      List<Order> aux = <Order>[];
      orders.forEach((Order order) {
        if (double.parse(order.total) <= state.filterOptions.lowerThanAmount) aux.add(order);
      });
      orders.clear();
      orders.addAll(aux);
    }
    log(orders.toString());
    log('length: ${orders.length}');
    b.selectedOrders = ListBuilder(orders);
    log('SelectedOrders list lenght: ${b.selectedOrders.length}');
  });
}

AppState _setSearchParam(AppState state, SetSearchParam action) {
  return state.rebuild((AppStateBuilder b) {
    b.filterOptions.searchParam = action.value;
  });
}
