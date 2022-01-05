import 'package:auto_ilitoi/src/actions/firebase_actions/client_actions/index.dart';
import 'package:auto_ilitoi/src/actions/firebase_actions/index.dart';
import 'package:auto_ilitoi/src/container/index.dart';
import 'package:auto_ilitoi/src/models/index.dart';
import 'package:auto_ilitoi/src/presentation/home/clients_view.dart';
import 'package:auto_ilitoi/src/presentation/home/dashboard_commands.dart';
import 'package:auto_ilitoi/src/presentation/home/edit_selected_order.dart';
import 'package:auto_ilitoi/src/presentation/home/offers_view.dart';
import 'package:auto_ilitoi/src/presentation/home/orders_view.dart';
import 'package:auto_ilitoi/src/presentation/home/selected_order_details.dart';
import 'package:auto_ilitoi/src/presentation/home/statistics_view.dart';
import 'package:auto_ilitoi/src/presentation/mixins/dialog/create_order_mixin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with CreateOrderMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                StoreProvider.of<AppState>(context).dispatch(GetOrders());
                StoreProvider.of<AppState>(context).dispatch(GetClients());
              },
              icon: Icon(Icons.refresh)),
          IconButton(
              onPressed: () {
                StoreProvider.of<AppState>(context).dispatch(LogoutStart());
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Row(
        children: <Widget>[
          DashboardCommands(),
          Container(
            width: 10,
            height: MediaQuery.of(context).size.height,
            color: Colors.white10,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 4 / 5,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Container(
                height: MediaQuery.of(context).size.height - 48,
                width: MediaQuery.of(context).size.width * 4 / 5 - 48,
                child: SelectedViewContainer(
                  builder: (BuildContext context, int selectedView) {
                    if (selectedView == 1) return selectedOrderDetails(StoreProvider.of<AppState>(context).state.clients.toList());
                    if (selectedView == 2)
                      return EditSelectedOrder(
                        order: StoreProvider.of<AppState>(context).state.selectedOrder!,clients: StoreProvider.of<AppState>(context).state.clients.toList(),
                      );
                    if (selectedView == 3) return statisticsView();
                    if (selectedView == 4) return listOfOffers();
                    if (selectedView == 5) return listOfClients();
                    return listOfOrders();
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
