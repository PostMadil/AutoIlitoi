import 'package:auto_ilitoi/src/actions/app_logic/index.dart';
import 'package:auto_ilitoi/src/actions/firebase_actions/index.dart';
import 'package:auto_ilitoi/src/container/index.dart';
import 'package:auto_ilitoi/src/data/pdf_api.dart';
import 'package:auto_ilitoi/src/models/index.dart';
import 'package:auto_ilitoi/src/presentation/home/create_invoice_dialog.dart';
import 'package:auto_ilitoi/src/presentation/home/invalid_order_dialog.dart';
import 'package:auto_ilitoi/src/presentation/mixins/dialog/delete_order_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

Widget selectedOrderDetails(List<Client> clients) {
  return SelectedOrderContainer(builder: (BuildContext context, Order? order) {
    if (order != null) {
      Client? currentClient = null;
      if (order!.clientId != null && order!.clientId != '') {
        currentClient = clients.firstWhere((element) => element.id == order.clientId);
      }
      return Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                  onPressed: () {
                    StoreProvider.of<AppState>(context).dispatch(SetSelectedView(0));
                  },
                  icon: Icon(Icons.arrow_back_rounded)),
              SelectableText('Detalii:'),
              order.isOffer == true
                  ? ElevatedButton(
                      onPressed: () {
                        StoreProvider.of<AppState>(context).dispatch(UpdateOrder(Order.fromData(
                            id: order.id,
                            details: OrderDetails.fromData(
                              isOffer: false,
                              carPlate: order.carPlate,
                              chassisNumber: order.chassisNumber,
                              name: order.name,
                              phoneNumber: order.phoneNumber,
                              total: order.total,
                              paid: order.paid,
                              make: order.make!,
                              model: order.model!,
                              clientId: order.clientId,
                            ),
                            items: order.items.toList(),
                            dateTime: DateTime.now().toString())));
                      },
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.baby_changing_station),
                          Text('GENEREAZA COMANDA'),
                        ],
                      ),
                    )
                  : SizedBox(),
              ElevatedButton(
                onPressed: () {
                  showDeleteOrder(context);
                },
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.delete_forever,
                      color: Colors.red,
                    ),
                    order.isOffer == true ? Text('Sterge Oferta') : Text('Sterge Comanda'),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (isOrderValid(order)) {
                    if (order.isOffer == false) {
                      showCreateInvoiceMixin(context);
                    } else {
                      PdfApi.generate(order: order, serie: '', numar: '', modPlata: '', cif: '', address: '');
                    }
                  } else {
                    showOrderIsInvalid(context);
                  }
                },
                child: Row(
                  children: <Widget>[
                    Icon(Icons.download_sharp),
                    order.isOffer == true ? Text('OFERTA') : Text('FACTURA')
                  ],
                ),
              ),
              IconButton(
                  onPressed: () {
                    StoreProvider.of<AppState>(context).dispatch(const SetSelectedView(2));
                  },
                  icon: Icon(Icons.edit)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(56.0),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Row(
                        children: <Widget>[const SelectableText('Nume:'), order.clientId == null || order.clientId == ''? SelectableText(order.name):SelectableText(currentClient!.name)],
                      ),
                      Row(
                        children: <Widget>[
                          const SelectableText('Numar inmatriculare: '),
                          SelectableText(order.carPlate)
                        ],
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                  Row(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          const SelectableText('Telefon: '),
                          order.clientId == null || order.clientId == ''? SelectableText(order.phoneNumber):SelectableText(currentClient!.phoneNumber),
                        ],
                      ),
                      isOrderValid(order)
                          ? Text('')
                          : Icon(
                              Icons.details,
                              size: 32,
                              color: Colors.amberAccent,
                            ),
                      Row(
                        children: <Widget>[const SelectableText('Serie sasiu:'), SelectableText(order.chassisNumber)],
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[const SelectableText('Total: '), SelectableText(order.total)],
                      ),
                      Row(
                        children: <Widget>[
                          const SelectableText('Achitat: '),
                          order.paid == true ? Icon(Icons.check_box) : Icon(Icons.check_box_outline_blank),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, childAspectRatio: 6),
                itemCount: (order.items.length + 1) * 3,
                itemBuilder: (BuildContext context, int index) {
                  if (index < 3) {
                    switch (index) {
                      case 0:
                        {
                          return Center(
                            child: SelectableText('NUME PIESA'),
                          );
                        }
                      case 1:
                        {
                          return Center(
                            child: SelectableText('COD PIESA'),
                          );
                        }
                      case 2:
                        {
                          return Center(
                            child: SelectableText('PRET'),
                          );
                        }
                    }
                  } else {
                    CarPart currentPart = order.items[(index ~/ 3) - 1];
                    switch (index % 3) {
                      case 0:
                        {
                          return Center(
                            child:
                                currentPart.name == null ? SelectableText('----') : SelectableText(currentPart.name!),
                          );
                        }
                      case 1:
                        {
                          return Center(
                            child:
                                currentPart.code == null ? SelectableText('----') : SelectableText(currentPart.code!),
                          );
                        }
                      case 2:
                        {
                          return Center(
                            child: currentPart.price == null
                                ? SelectableText('----')
                                : SelectableText(currentPart.price!.toString()),
                          );
                        }
                    }
                  }
                  return Container();
                }),
          ),
        ],
      );
    } else {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
  });
}

bool isOrderValid(Order order) {
  int length = order.items.length;
  if(length < 1 ) return false;
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
