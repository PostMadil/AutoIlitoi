import 'dart:developer';

import 'package:auto_ilitoi/src/actions/app_filter/index.dart';
import 'package:auto_ilitoi/src/actions/app_logic/index.dart';
import 'package:auto_ilitoi/src/actions/firebase_actions/index.dart';
import 'package:auto_ilitoi/src/container/index.dart';
import 'package:auto_ilitoi/src/data/pdf_api.dart';
import 'package:auto_ilitoi/src/models/index.dart';
import 'package:auto_ilitoi/src/presentation/home/edit_selected_order.dart';
import 'package:auto_ilitoi/src/presentation/mixins/dialog/create_order_mixin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

/*
Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        textInputAction: TextInputAction.search,
        textCapitalization: TextCapitalization.words,
        decoration: InputDecoration(
          focusColor: Colors.blue,
          hintText: 'stock',
          suffixIcon:  Icon(
            Icons.search,
            color: Colors.blue,
          ),
        ),
        onChanged: (String value){
          if(value != ''){
            StoreProvider.of(context).dispatch(GetOrders());
          } else{
            StoreProvider.of(context).dispatch(GetOrders());
          }
        },
      ),
        ),
*/
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
          Container(
            width: MediaQuery.of(context).size.width / 5 - 10,
            height: MediaQuery.of(context).size.height,
            color: Colors.white60,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 6,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: ElevatedButton(
                      child: Text('Comanda noua'),
                      onPressed: () {
                        showCreateDialog(context);
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 6,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: SelectedViewContainer(
                      builder: (BuildContext context, int selectedView) {
                        return ElevatedButton(
                          child: selectedView == 3 ? Text('DashBoard') : Text('Statistics'),
                          onPressed: () {
                            if (selectedView == 3) {
                              StoreProvider.of<AppState>(context).dispatch(SetSelectedView(0));
                            } else {
                              StoreProvider.of<AppState>(context).dispatch(SetSelectedView(3));
                            }
                          },
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  child: FilterOptionsContainer(builder: (BuildContext context, FilterOptions filterOptions) {
                    return Column(
                      children: <Widget>[
                        ListTile(
                          title: Text('Achitate'),
                          leading: Checkbox(
                            checkColor: Colors.white,
                            fillColor: MaterialStateProperty.resolveWith(getColor),
                            value: filterOptions.onlyPaid,
                            onChanged: (bool? value) {
                              StoreProvider.of<AppState>(context).dispatch(SetOnlyPaid());
                              StoreProvider.of<AppState>(context).dispatch(FilterOrders(FilterOptions.intialStaate()));
                            },
                          ),
                        ),
                        ListTile(
                          title: Text('Neachitate'),
                          leading: Checkbox(
                            checkColor: Colors.white,
                            fillColor: MaterialStateProperty.resolveWith(getColor),
                            value: filterOptions.onlyUnpaid,
                            onChanged: (bool? value) {
                              StoreProvider.of<AppState>(context).dispatch(SetOnlyUnpaid());
                              StoreProvider.of<AppState>(context).dispatch(FilterOrders(FilterOptions.intialStaate()));
                            },
                          ),
                        ),
                        ListTile(
                          title: Text('Mai mari decat:'),
                          leading: Checkbox(
                            checkColor: Colors.white,
                            fillColor: MaterialStateProperty.resolveWith(getColor),
                            value: filterOptions.higherThan,
                            onChanged: (bool? value) {
                              StoreProvider.of<AppState>(context).dispatch(SetHigherThan());
                              StoreProvider.of<AppState>(context).dispatch(FilterOrders(FilterOptions.intialStaate()));
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width / 4 - 16,
                            child: TextField(
                              enabled: filterOptions.higherThan,
                              decoration: new InputDecoration(
                                labelText: "LIMITA",
                                fillColor: Colors.white,
                                border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(25.0),
                                  borderSide: new BorderSide(),
                                ),
                                //fillColor: Colors.green
                              ),
                              keyboardType: TextInputType.emailAddress,
                              style: new TextStyle(
                                fontFamily: "Poppins",
                              ),
                              onChanged: (value) {
                                if (double.tryParse(value) != null) {
                                  StoreProvider.of<AppState>(context)
                                      .dispatch(SetHigherThanAmount(double.parse(value)));
                                  StoreProvider.of<AppState>(context)
                                      .dispatch(FilterOrders(FilterOptions.intialStaate()));
                                }
                              },
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text('Mai mici decat:'),
                          leading: Checkbox(
                            checkColor: Colors.white,
                            fillColor: MaterialStateProperty.resolveWith(getColor),
                            value: filterOptions.lowerThan,
                            onChanged: (bool? value) {
                              StoreProvider.of<AppState>(context).dispatch(SetLowerThan());
                              StoreProvider.of<AppState>(context).dispatch(FilterOrders(FilterOptions.intialStaate()));
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width / 4 - 16,
                            child: TextField(
                              enabled: filterOptions.lowerThan,
                              decoration: new InputDecoration(
                                labelText: "LIMITA",
                                fillColor: Colors.white,
                                border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(25.0),
                                  borderSide: new BorderSide(),
                                ),
                                //fillColor: Colors.green
                              ),
                              keyboardType: TextInputType.emailAddress,
                              style: new TextStyle(
                                fontFamily: "Poppins",
                              ),
                              onChanged: (value) {
                                if (double.tryParse(value) != null) {
                                  StoreProvider.of<AppState>(context).dispatch(SetLowerThanAmount(double.parse(value)));
                                  StoreProvider.of<AppState>(context)
                                      .dispatch(FilterOrders(FilterOptions.intialStaate()));
                                }
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: TextField(
                            textInputAction: TextInputAction.search,
                            textCapitalization: TextCapitalization.words,
                            decoration: InputDecoration(
                              focusColor: Colors.blue,
                              hintText: 'Nume',
                              suffixIcon: Icon(
                                Icons.search,
                                color: Colors.blue,
                              ),
                            ),
                            onChanged: (String value) {
                              StoreProvider.of<AppState>(context).dispatch(SetSearchParam(value: value));
                              StoreProvider.of<AppState>(context).dispatch(FilterOrders(filterOptions));
                            },
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              ],
            ),
          ),
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
                    if (selectedView == 1) return selectedOrderDetails();
                    if (selectedView == 2)
                      return EditSelectedOrder(
                        order: StoreProvider.of<AppState>(context).state.selectedOrder!,
                      );
                    if (selectedView == 3) return statisticsView();
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

Color getColor(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return Colors.blue;
  }
  return Colors.red;
}

Widget statisticsView() {
  return StatisticsContainer(builder: (BuildContext context, Statistics statistics) {
    return Container(
      height: MediaQuery.of(context).size.height - 48,
      width: MediaQuery.of(context).size.width * 4 / 5 - 48,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: (MediaQuery.of(context).size.height - 48 - 32) / 2,
                  width: (MediaQuery.of(context).size.width * 4 / 5 - 48 - 64) / 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Comenzi'),
                      SfSparkLineChart(
                        trackball: const SparkChartTrackball(),
                        data: statistics.ordersPerMonth,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: (MediaQuery.of(context).size.height - 48) / 2 - 32,
                  width: (MediaQuery.of(context).size.width * 4 / 5 - 48 - 64) / 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Incasari'),
                      SfSparkLineChart(
                        trackball: const SparkChartTrackball(),
                        data: statistics.moneyPerMonth,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent), borderRadius: BorderRadius.circular(20)),
                  height: (MediaQuery.of(context).size.height - 48) / 2 - 72 - 16,
                  width: (MediaQuery.of(context).size.width * 4 / 5 - 48 - 86) / 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'TOTAL: ' + statistics.total.toString() + " RON",
                        style: TextStyle(fontSize: 32, color: Colors.black87),
                      ),
                      SizedBox(height: 16),
                      Icon(
                        Icons.monetization_on_rounded,
                        size: 32,
                        color: Colors.black87,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent), borderRadius: BorderRadius.circular(20)),
                  height: (MediaQuery.of(context).size.height - 48) / 2 - 72 - 16,
                  width: (MediaQuery.of(context).size.width * 4 / 5 - 48 - 86) / 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Achitat: ' + statistics.totalPaid.toString() + " RON",
                        style: TextStyle(fontSize: 32, color: Colors.greenAccent),
                      ),
                      SizedBox(height: 16),
                      Icon(
                        Icons.monetization_on_rounded,
                        size: 32,
                        color: Colors.greenAccent,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent), borderRadius: BorderRadius.circular(20)),
                  height: (MediaQuery.of(context).size.height - 48) / 2 - 72 - 16,
                  width: (MediaQuery.of(context).size.width * 4 / 5 - 48 - 86) / 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Neachitat: ' + statistics.totalUnpaid.toString() + " RON",
                        style: TextStyle(fontSize: 32, color: Colors.amber),
                      ),
                      SizedBox(height: 16),
                      Icon(
                        Icons.money_off,
                        size: 32,
                        color: Colors.amber,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  });
}

Widget selectedOrderDetails() {
  return SelectedOrderContainer(builder: (BuildContext context, Order? order) {
    if (order != null)
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
                        children: <Widget>[const SelectableText('Nume:'), SelectableText(order.name)],
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
                          SelectableText(order.phoneNumber),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  if (isOrderValid(order)) {
                    showCreateInvoiceMixin(context);
                  } else {
                    showOrderIsInvalid(context);
                  }
                },
                child: Row(
                  children: <Widget>[Icon(Icons.download_sharp), Text('FACTURA')],
                ),
              ),
            ],
          ),
        ],
      );
    else {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
  });
}

Widget listOfOrders() {
  return SelectedOrdersContainer(
    builder: (BuildContext context, List<Order> orders) {
      return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 3,
          crossAxisSpacing: 0,
          mainAxisSpacing: 6,
          crossAxisCount: 6,
        ),
        itemCount: (orders.length + 1) * 6,
        itemBuilder: (BuildContext context, int index) {
          if (index < 6) {
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
                      child: Text('Car Plate'),
                    ),
                  );
                }
              case 2:
                {
                  return Container(
                    child: Center(
                      child: Text('Serie Sasiu'),
                    ),
                  );
                }
              case 3:
                {
                  return Container(
                    child: Center(
                      child: Text('Total'),
                    ),
                  );
                }
              case 4:
                {
                  return Container(
                    child: Center(
                      child: Text('Status'),
                    ),
                  );
                }
              case 5:
                {
                  return Container(
                    child: Center(
                      child: Text('Detalii'),
                    ),
                  );
                }
            }
          } else {
            Order currentOrder = orders[(index - 6) ~/ 6];
            Color unfinishedOrder = Colors.amber;
            if (isOrderValid(currentOrder)) {
              unfinishedOrder = Colors.blue;
            }
            switch (index % 6) {
              case 0:
                {
                  return Container(
                    color: index ~/ 6 % 2 == 1 ? unfinishedOrder : Colors.white60,
                    child: Center(
                      child: Text(currentOrder.name),
                    ),
                  );
                }
              case 1:
                {
                  return Container(
                    color: index ~/ 6 % 2 == 1 ? unfinishedOrder : Colors.white60,
                    child: Center(
                      child: Text(currentOrder.carPlate),
                    ),
                  );
                }
              case 2:
                {
                  return Container(
                    color: index ~/ 6 % 2 == 1 ? unfinishedOrder : Colors.white60,
                    child: Center(
                      child: SelectableText(currentOrder.chassisNumber),
                    ),
                  );
                }
              case 3:
                {
                  return Container(
                    color: index ~/ 6 % 2 == 1 ? unfinishedOrder : Colors.white60,
                    child: Center(
                      child: Text(currentOrder.total),
                    ),
                  );
                }
              case 4:
                {
                  return Container(
                    color: index ~/ 6 % 2 == 1 ? unfinishedOrder : Colors.white60,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          currentOrder.paid ? Icon(Icons.check_box) : Icon(Icons.check_box_outline_blank),
                          currentOrder.paid ? Text('Achitat') : Text('Neachitat'),
                        ],
                      ),
                    ),
                  );
                }
              case 5:
                {
                  return Container(
                    color: index ~/ 6 % 2 == 1 ? unfinishedOrder : Colors.white60,
                    child: IconButton(
                      icon: Icon(Icons.arrow_forward_outlined),
                      onPressed: () {
                        StoreProvider.of<AppState>(context).dispatch(SetSelectedOrder(currentOrder));
                        StoreProvider.of<AppState>(context).dispatch(const SetSelectedView(1));
                        log("I was pressed");
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

Future<void> showOrderIsInvalid(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          'Comanda nu este completa!',
          style: TextStyle(color: Colors.red),
        ),
        content: Text('Editati comanda unde campurile invalide pentru a o putea procesa...'),
        actions: <Widget>[
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Ok')),
        ],
      );
    },
  );
}

Future<void> showCreateInvoiceMixin(BuildContext context) {
  String _serie = '';
  String _numar = '';
  String _modPlata = '';

  String _serieError = '';
  String _numarError = '';
  String _modPlataError = '';

  bool _isLoading = false;

  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (BuildContext context, setState) {
          return AlertDialog(
            title: Text('Creeaza factura:'),
            content: Container(
              height: 600,
              width: 300,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 284,
                      child: TextField(
                        decoration: new InputDecoration(
                          errorText: _numarError,
                          labelText: "Numar factura",
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide: new BorderSide(),
                          ),
                          //fillColor: Colors.green
                        ),
                        keyboardType: TextInputType.emailAddress,
                        style: new TextStyle(
                          fontFamily: "Poppins",
                        ),
                        onChanged: (value) {
                          setState(() {
                            _numar = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 284,
                      child: TextField(
                        decoration: new InputDecoration(
                          errorText: _serieError,
                          labelText: "Serie factura",
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide: new BorderSide(),
                          ),
                          //fillColor: Colors.green
                        ),
                        keyboardType: TextInputType.emailAddress,
                        style: new TextStyle(
                          fontFamily: "Poppins",
                        ),
                        onChanged: (value) {
                          setState(() {
                            _serie = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 284,
                      child: TextField(
                        decoration: new InputDecoration(
                          errorText: _modPlataError,
                          labelText: "Mod plata",
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide: new BorderSide(),
                          ),
                          //fillColor: Colors.green
                        ),
                        keyboardType: TextInputType.emailAddress,
                        style: new TextStyle(
                          fontFamily: "Poppins",
                        ),
                        onChanged: (value) {
                          setState(() {
                            _modPlata = value;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: Text('GENEREAZA FACTURA'),
                onPressed: () {
                  if (_serie != '' && _numar != '' && _modPlata != '') {
                    PdfApi.generate(
                        order: StoreProvider.of<AppState>(context).state.selectedOrder!,
                        serie: _serie,
                        numar: _numar,
                        modPlata: _modPlata);
                    Navigator.of(context).pop();
                  } else {
                    setState(() {
                      if (_serie == '') {
                        _serieError = 'Serie invalida';
                      }
                      if (_numar == '') {
                        _numarError = 'Numar invalid';
                      }
                      if (_modPlata == '') {
                        _modPlataError = 'Modalitate plata invalida';
                      }
                    });
                  }
                },
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('CANCEL')),
            ],
          );
        });
      });
}
/*
* return ListView.builder(
                      itemCount: orders.length + 1,
                      itemBuilder: (BuildContext context, int index) {
                        if (index == 0) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text('Nume'),
                                  Text('Car Plate'),
                                  Text('Serie Sasiu'),
                                  Text('Total'),
                                  Text('Status'),
                                  Text('Detalii'),
                                ],
                              ),
                            ),
                          );
                        } else {
                          final Order orderItem = orders[index - 1];
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: index%2 == 1? Colors.white60 : Colors.white70,
                                border: Border.all(color: Colors.blueAccent),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(orderItem.name),
                                  Text(orderItem.carPlate),
                                  Text(orderItem.chassisNumber),
                                  Text(orderItem.total + ' RON'),
                                  Row(children: <Widget>[
                                    orderItem.paid?
                                        Icon(Icons.check_box) : Icon(Icons.check_box_outline_blank),
                                    orderItem.paid? Text('Achitat') : Text('Neachitat'),
                                  ],),
                                  Container(
                                    width: 100,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    child: ElevatedButton(
                                      child: Icon(Icons.arrow_forward_outlined),
                                      onPressed: () {
                                        StoreProvider.of<AppState>(context).dispatch(SetSelectedOrder(orderItem));
                                        log("I was pressed");
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }
                      },
                    );
                    * */
