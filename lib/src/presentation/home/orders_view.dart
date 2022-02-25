import 'package:auto_ilitoi/src/actions/app_logic/index.dart';
import 'package:auto_ilitoi/src/container/index.dart';
import 'package:auto_ilitoi/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

Widget listOfOrders() {
  return ClientsContainer(builder: (BuildContext context, List<Client> clients) {
    return OrdersContainer(
      builder: (BuildContext context, List<Order> orders) {
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 3,
            crossAxisSpacing: 0,
            mainAxisSpacing: 6,
            crossAxisCount: 7,
          ),
          itemCount: (orders.length + 1) * 7,
          itemBuilder: (BuildContext context, int index) {
            if (index < 7) {
              switch (index) {
                case 0:
                  {
                    return Container(
                      child: Center(
                        child: Text('Index'),
                      ),
                    );
                  }
                case 1:
                  {
                    return Container(
                      child: Center(
                        child: Text('Nume'),
                      ),
                    );
                  }
                case 2:
                  {
                    return Container(
                      child: Center(
                        child: Text('Model'),
                      ),
                    );
                  }
                case 3:
                  {
                    return Container(
                      child: Center(
                        child: Text('Serie Sasiu'),
                      ),
                    );
                  }
                case 4:
                  {
                    return Container(
                      child: Center(
                        child: Text('Total'),
                      ),
                    );
                  }
                case 5:
                  {
                    return Container(
                      child: Center(
                        child: Text('Status'),
                      ),
                    );
                  }
                case 6:
                  {
                    return Container(
                      child: Center(
                        child: Text('Detalii'),
                      ),
                    );
                  }
              }
            } else {
              Order currentOrder = orders[(index - 7) ~/ 7];
              Client? currentClient = null;
              if (currentOrder.clientId != null && currentOrder.clientId != '') {
                currentClient = clients.firstWhere((element) => element.id == currentOrder.clientId);
              }
              Color currentColor = Colors.amber;

              if (isOrderValid(currentOrder)) {
                if (index ~/ 7 % 2 == 1)
                  currentColor = Colors.white60;
                else
                  currentColor = Colors.blue;
              } else {
                currentColor = Colors.amberAccent;
              }

              switch (index % 7) {
                case 0:
                  {
                    return Container(
                      color: currentColor,
                      child: Center(
                        child: Text((orders.length + 1 - (index ~/ 7)).toString()),
                      ),
                    );
                  }
                case 1:
                  {
                    return Container(
                      color: currentColor,
                      child: Center(
                        child: Text(currentOrder.clientId == null || currentOrder.clientId == ''
                            ? currentOrder.name
                            : currentClient!.name),
                      ),
                    );
                  }
                case 2:
                  {
                    return Container(
                      color: currentColor,
                      child: Center(
                        child: Text('${currentOrder.make} ${currentOrder.model}'),
                      ),
                    );
                  }
                case 3:
                  {
                    return Container(
                      color: currentColor,
                      child: Center(
                        child: SelectableText(currentOrder.chassisNumber),
                      ),
                    );
                  }
                case 4:
                  {
                    return Container(
                      color: currentColor,
                      child: Center(
                        child: Text(currentOrder.total),
                      ),
                    );
                  }
                case 5:
                  {
                    return Container(
                      color: currentColor,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            currentOrder.paid ? Icon(Icons.check_box) : Icon(Icons.check_box_outline_blank),
                            currentOrder.paid ? Text('      Achitat') : Text(' Neachitat'),
                          ],
                        ),
                      ),
                    );
                  }
                case 6:
                  {
                    return Container(
                      color: currentColor,
                      child: IconButton(
                        icon: Icon(Icons.arrow_forward_outlined),
                        onPressed: () {
                          StoreProvider.of<AppState>(context).dispatch(SetSelectedOrder(currentOrder));
                          StoreProvider.of<AppState>(context).dispatch(const SetSelectedView(1));
                        },
                      ),
                    );
                  }
              }
            }
            return Text('');
          },
        );
      },
    );
  });
}

bool isOrderValid(Order order) {
  int length = order.items.length;
  if (length < 1) return false;
  for (int i = 0; i < length; i++) {
    if (order.items[i].name == '' || order.items[i].name == null) {
      return false;
    }
    //Verify cod

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
