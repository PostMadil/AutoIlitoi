import 'dart:developer';

import 'package:auto_ilitoi/src/actions/app_filter/index.dart';
import 'package:auto_ilitoi/src/actions/app_logic/index.dart';
import 'package:auto_ilitoi/src/container/index.dart';
import 'package:auto_ilitoi/src/models/index.dart';
import 'package:auto_ilitoi/src/presentation/mixins/dialog/delete_client_mixin.dart';
import 'package:auto_ilitoi/src/presentation/mixins/dialog/edit_client_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

Widget listOfClients() {
  return ClientsContainer(
    builder: (BuildContext context, List<Client> clients) {
      return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 6,
            crossAxisSpacing: 0,
            mainAxisSpacing: 6,
            crossAxisCount: 3,
          ),
          itemCount: (clients.length + 1) * 3,
          itemBuilder: (BuildContext context, int index) {
            if (index < 3) {
              switch (index) {
                case 0:
                  {
                    return Container(
                      child: Center(
                        child: Text('Nume'),
                      ),
                    );
                  }
                case 1:
                  {
                    return Container(
                      child: Center(
                        child: Text('Numar telefon'),
                      ),
                    );
                  }
                case 2:
                  {
                    return Container(
                      child: Center(
                        child: Text('Actiuni'),
                      ),
                    );
                  }
              }
            } else {
              Client currentClient = clients[(index - 3) ~/ 3];
              Color mainColor = Colors.deepPurpleAccent;
              Color secondaryColor = Colors.cyan;
              switch (index % 3) {
                case 0:
                  {
                    return Container(
                      color: index ~/ 3 % 2 == 1 ? mainColor : secondaryColor,
                      child: Center(
                        child: Text(currentClient.name),
                      ),
                    );
                  }
                case 1:
                  {
                    return Container(
                      color: index ~/ 3 % 2 == 1 ? mainColor : secondaryColor,
                      child: Center(
                        child: Text(currentClient.phoneNumber),
                      ),
                    );
                  }
                case 2:
                  {
                    return Container(
                      color: index ~/ 3 % 2 == 1 ? mainColor : secondaryColor,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            // IconButton(
                            //   onPressed: () {
                            //     //showDeleteClient(context, currentClient);
                            //     SnackBar
                            //   },
                            //   icon: Icon(
                            //     Icons.delete_forever,
                            //     color: Colors.red,
                            //   ),
                            // ),
                            IconButton(
                              onPressed: () {
                                log('Edit dialog should open up');
                                showEditClientDialog(context, currentClient);
                              },
                              icon: Icon(
                                Icons.edit,
                                color: Colors.red,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                StoreProvider.of<AppState>(context).dispatch(SetSelectedClient(currentClient));
                                StoreProvider.of<AppState>(context).dispatch(FilterOrders());
                                StoreProvider.of<AppState>(context).dispatch(SetSelectedView(0));

                              },
                              icon: Icon(
                                Icons.open_in_new,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
              }
            }
            return Text('');
          });
    },
  );
}

bool isOrderValid(Order order) {
  int length = order.items.length;
  for (int i = 0; i < length; i++) {
    if (order.items[i].name == '' || order.items[i].name == null) {
      return false;
    }
    //Verify cod
    if (order.items[i].code == '' || order.items[i].code == null) {
      return false;
    }
    //Verify qty
    if (order.items[i].qty == '' || order.items[i].qty == null) {
      return false;
    } else {
      if (double.tryParse(order.items[i].qty!) == null) {
        return false;
      }
    }
    //Verify price
    if (order.items[i].price == '' || order.items[i].price == null) {
      return false;
    } else {
      if (double.tryParse(order.items[i].price!) == null) {
        return false;
      }
    }
  }
  return true;
}
