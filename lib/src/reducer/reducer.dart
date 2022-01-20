import 'dart:developer';


import 'package:auto_ilitoi/src/actions/app_filter/index.dart';
import 'package:auto_ilitoi/src/actions/app_logic/index.dart';
import 'package:auto_ilitoi/src/actions/firebase_actions/client_actions/index.dart';
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
  TypedReducer<AppState, InitializeAppSuccessful>(_initializeAppSuccessful),

  TypedReducer<AppState, GetOrdersSuccessful>(_getOrdersSuccessful),
  TypedReducer<AppState, DeleteOrderSuccessful>(_deleteOrderSuccessful),
  TypedReducer<AppState, CreateOrderSuccessful>(_createOrderSuccessful),
  TypedReducer<AppState, UpdateOrderSuccessful>(_updateOrderSuccessful),

  TypedReducer<AppState, GetClientsSuccessful>(_getClientsSuccessful),
  TypedReducer<AppState, DeleteClientSuccessful>(_deleteClientSuccessful),
  TypedReducer<AppState, CreateClientSuccessful>(_createClientSuccessful),


  TypedReducer<AppState, SetSelectedClient>(_setSelectedClient),
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
  TypedReducer<AppState, SetSearchBy>(_setSearchBy),
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
    List<Order> offers = <Order>[];
    List<Order> orders = <Order>[];
    List<Order> finishedOrders = <Order>[];

    action.orders.forEach((Order order) {
      if (order.isOffer) {
        offers.add(order);
      } else {
        if(order.finished != null && order.finished! == true){
          finishedOrders.add(order);
        } else {
          orders.add(order);
        }
      }
    });
    b.offers = ListBuilder(offers);
    b.orders = ListBuilder(action.orders);
    b.finishedOrders = ListBuilder(finishedOrders);
    b.selectedOrders = ListBuilder(orders);

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
    List<Order> offers = <Order>[];
    List<Order> finished = <Order>[];

    //if(action.order!=null) orders.insert(0, action.order!);
    b.orders.build().forEach((Order order) {
      if (order.isOffer == true) {
        offers.add(order);
        log("i was filtered as asn offer");
      } else {
        if(order.finished != null && order.finished! == true){
          finished.add(order);
          log("Added to finished!");
        } else {
          orders.add(order);
        }
      }
    });


    b.offers = ListBuilder(offers);
    b.finishedOrders = ListBuilder(finished);



    if(state.filterOptions.selectedClient != null){
      List<Order> aux = <Order>[];
      orders.forEach((Order order) {
        if(order.clientId != null  && order.clientId != ''){
          if(order.clientId == state.filterOptions.selectedClient!.id){
            aux.add(order);
          }
        }
      });
      orders.clear();
      orders.addAll(aux);
    }
    if (state.filterOptions.searchParam != '') {
      log('filtering only containing ${state.filterOptions.searchParam}...');
      List<Order> aux = <Order>[];
      switch (state.filterOptions.searchBy) {
        case 'Nume':
          {
            orders.forEach((Order order) {
              if(order.clientId != null && order.clientId !=''){
                Client currentClient = state.clients.firstWhere((Client client) => client.id == order.clientId);
                if(currentClient.name.toUpperCase().contains(state.filterOptions.searchParam.toUpperCase()))
                  aux.add(order);
              } else {
                if (order.name != null &&
                    order.name.toUpperCase().contains(state.filterOptions.searchParam.toUpperCase())) aux.add(order);
              }
            });
            break;
          }
        case 'Telefon':
          {
            orders.forEach((Order order) {
              if(order.clientId != null && order.clientId != ''){
                Client currentClient = state.clients.firstWhere((Client client) => client.id == order.clientId);
                if(currentClient.phoneNumber.toUpperCase().contains(state.filterOptions.searchParam.toUpperCase()))
                  aux.add(order);
              } else {
                if (order.phoneNumber.toUpperCase().contains(state.filterOptions.searchParam.toUpperCase()))
                  aux.add(order);
              }
            });
            break;
          }
        case 'Numar inmatricullare':
          {
            orders.forEach((Order order) {
              if (order.chassisNumber != null &&
                  order.carPlate.toUpperCase().contains(state.filterOptions.searchParam.toUpperCase())) aux.add(order);
            });
            break;
          }
        case 'Serie sasiu':
          {
            orders.forEach((Order order) {
              if (order.chassisNumber != null &&
                  order.chassisNumber.toUpperCase().contains(state.filterOptions.searchParam.toUpperCase()))
                aux.add(order);
            });
            break;
          }
        case 'Marca':
          {
            orders.forEach((Order order) {
              log('Filter my make with param: ${state.filterOptions.searchBy}');
              if (order.make != null &&
                  order.make!.toUpperCase().contains(state.filterOptions.searchParam.toUpperCase())) aux.add(order);
            });
            break;
          }
        case 'Model':
          {
            orders.forEach((Order order) {
              if (order.model != null &&
                  order.model!.toUpperCase().contains(state.filterOptions.searchParam.toUpperCase())) aux.add(order);
            });
            break;
          }
      }
      orders.clear();
      if(aux.length!=0){
        orders.addAll(aux);
      }
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
    log("HERE IS THE MEW ORDER" + orders.last.name.toString());
    log('length: ${orders.length}');
    if(orders.length!=0){
      b.selectedOrders = ListBuilder(orders);
    }else {
      log("No remaining orders");
      b.selectedOrders.clear();
    }
    log('SelectedOrders list lenght: ${b.selectedOrders.length}');
  });
}

AppState _setSearchParam(AppState state, SetSearchParam action) {
  return state.rebuild((AppStateBuilder b) {
    b.filterOptions.searchParam = action.value;
  });
}

AppState _setSearchBy(AppState state, SetSearchBy action) {
  return state.rebuild((AppStateBuilder b) {
    b.filterOptions.searchBy = action.value;
  });
}

AppState _deleteOrderSuccessful(AppState state, DeleteOrderSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    if(b.selectedOrder.isOffer == true) {
      b.selectedView = 4;
    } else {
      if(b.selectedOrder.finished == true) {
        b.selectedView = 10;
      } else{
        b.selectedView = 0;
      }
    }
    b.orders.remove(action.order);
    if(action.order.isOffer){
      b.offers.remove(action.order);
    }else{
      if(action.order.finished == true) {
        b.finishedOrders.remove(action.order);
      } else {
        b.selectedOrders.remove(action.order);
      }
    }


  });
}

AppState _getClientsSuccessful(AppState state, GetClientsSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    if(action.clients.isEmpty){
      log('clients not found');
    }else{
      b.clients = ListBuilder(action.clients);
      log('clients found and added');

    }
  });
}

AppState _deleteClientSuccessful(AppState state, DeleteClientSuccessful action) {
  return state.rebuild((AppStateBuilder b ) {
    state.orders.forEach((Order order) {
      if(order.clientId != null && order.clientId != ''){
        if(order.clientId == action.client.id){
          b.orders.remove(order);
          b.selectedOrders.remove(order);
          b.offers.remove(order);
        }
      }
    });
    b.clients.remove(action.client);
  });
}

AppState _createClientSuccessful(AppState state, CreateClientSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b.clients.add(action.client);
  });
}

AppState _setSelectedClient(AppState state, SetSelectedClient action) {
  return state.rebuild((AppStateBuilder b) {
    if(action.client != null) {
      b.filterOptions.selectedClient = action.client!.toBuilder();
    } else {
      b.filterOptions.selectedClient = null;
    }
  });
}

AppState _createOrderSuccessful(AppState state, CreateOrderSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b.orders.insert(0, action.order);
  });
}

AppState _updateOrderSuccessful(AppState state, UpdateOrderSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    log("reducer updated order: finished: ${action.updatedOrder.finished}");
    int c = b.orders.build().indexWhere((Order order) => order.id == action.updatedOrder.id);
    log("C: (position) $c");
    b.orders[c] = action.updatedOrder;
  });
}
