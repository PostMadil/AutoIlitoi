import 'dart:developer';

import 'package:auto_ilitoi/src/actions/app_filter/index.dart';
import 'package:auto_ilitoi/src/actions/app_logic/index.dart';
import 'package:auto_ilitoi/src/container/index.dart';
import 'package:auto_ilitoi/src/models/index.dart';
import 'package:auto_ilitoi/src/presentation/mixins/dialog/create_mecanic_mixin.dart';
import 'package:auto_ilitoi/src/presentation/mixins/dialog/create_order_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class DashboardCommands extends StatefulWidget {
  const DashboardCommands({Key? key}) : super(key: key);

  @override
  _DashboardCommandsState createState() => _DashboardCommandsState();
}

class _DashboardCommandsState extends State<DashboardCommands> with CreateOrderMixin, CreateClientMixin {
  List<String> searchBy = <String>[
    'Numar inmatricullare',
    'Serie sasiu',
    'Nume',
    'Telefon',
    'Marca',
    'Model',
  ];

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

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  showCreateDialog(context, false);
                },
              ),
            ),
          ),
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
                child: Text('Mecanic Nou'),
                onPressed: () {
                  showCreateClientDialog(context);
                },
              ),
            ),
          ),
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
                child: Text('Oferta noua'),
                onPressed: () {
                  showCreateDialog(context, true);
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
              return SelectedViewContainer(
                builder: (BuildContext context, int selectedView) {
                  return SelectedOrderContainer(builder: (BuildContext context, Order? selectedOrder) {
                    return Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            TextButton(
                              onPressed: () {
                                StoreProvider.of<AppState>(context).dispatch(SetSelectedView(0));
                              },
                              child: Text(
                                'Comenzi',
                                style: TextStyle(
                                    color: (selectedView == 0) ||
                                            ((selectedView == 1 || selectedView == 2) &&
                                                selectedOrder!.isOffer == false)
                                        ? Colors.deepPurpleAccent
                                        : Colors.cyan),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                StoreProvider.of<AppState>(context).dispatch(SetSelectedView(4));
                              },
                              child: Text(
                                'Oferte',
                                style: TextStyle(
                                    color: (selectedView == 4) ||
                                            ((selectedView == 1 || selectedView == 2) && selectedOrder!.isOffer == true)
                                        ? Colors.deepPurpleAccent
                                        : Colors.cyan),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                StoreProvider.of<AppState>(context).dispatch(SetSelectedView(5));
                              },
                              child: Text(
                                'Mecanici',
                                style: TextStyle(color: selectedView == 5 ? Colors.deepPurpleAccent : Colors.cyan),
                              ),
                            ),
                          ],
                        ),
                        // ListTile(
                        //   title: Text('Comenzi'),
                        //   leading: Checkbox(
                        //     checkColor: Colors.white,
                        //     fillColor: MaterialStateProperty.resolveWith(getColor),
                        //     value: (selectedView == 0) ||
                        //             ((selectedView == 1 || selectedView == 2) && selectedOrder!.isOffer == false)
                        //         ? true
                        //         : false,
                        //     onChanged: (bool? value) {
                        //       StoreProvider.of<AppState>(context).dispatch(SetSelectedView(0));
                        //     },
                        //   ),
                        // ),
                        // ListTile(
                        //   title: Text('Oferte'),
                        //   leading: Checkbox(
                        //     checkColor: Colors.white,
                        //     fillColor: MaterialStateProperty.resolveWith(getColor),
                        //     value: (selectedView == 4) ||
                        //             ((selectedView == 1 || selectedView == 2) && selectedOrder!.isOffer == true)
                        //         ? true
                        //         : false,
                        //     onChanged: (bool? value) {
                        //       StoreProvider.of<AppState>(context).dispatch(SetSelectedView(4));
                        //     },
                        //   ),
                        // ),
                        // ListTile(
                        //   title: Text('Mecanici'),
                        //   leading: Checkbox(
                        //     checkColor: Colors.white,
                        //     fillColor: MaterialStateProperty.resolveWith(getColor),
                        //     value: selectedView == 5 ? true : false,
                        //     onChanged: (bool? value) {
                        //       StoreProvider.of<AppState>(context).dispatch(SetSelectedView(5));
                        //     },
                        //   ),
                        // ),
                        ListTile(
                          title: Text('Achitate'),
                          leading: Checkbox(
                            checkColor: Colors.white,
                            fillColor: MaterialStateProperty.resolveWith(getColor),
                            value: filterOptions.onlyPaid,
                            onChanged: (bool? value) {
                              StoreProvider.of<AppState>(context).dispatch(SetOnlyPaid());
                              StoreProvider.of<AppState>(context).dispatch(FilterOrders());
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
                              StoreProvider.of<AppState>(context).dispatch(FilterOrders());
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
                              StoreProvider.of<AppState>(context).dispatch(FilterOrders());
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
                                  StoreProvider.of<AppState>(context).dispatch(FilterOrders());
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
                              StoreProvider.of<AppState>(context).dispatch(FilterOrders());
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
                                  StoreProvider.of<AppState>(context).dispatch(FilterOrders());
                                }
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: DropdownButton(
                            value: filterOptions.searchBy,
                            items: searchBy
                                .map((e) => DropdownMenuItem(
                                      child: Text(e),
                                      value: e,
                                    ))
                                .toList(),
                            onChanged: (String? value) {
                              if (value != null && value != '') {
                                StoreProvider.of<AppState>(context).dispatch(SetSearchBy(value));
                                StoreProvider.of<AppState>(context).dispatch(FilterOrders());
                              }
                              log('SearchBy updated to: $value!');
                            },
                            isExpanded: true,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: TextField(
                            textInputAction: TextInputAction.search,
                            textCapitalization: TextCapitalization.words,
                            decoration: InputDecoration(
                              focusColor: Colors.blue,
                              hintText: 'Cautare',
                              suffixIcon: Icon(
                                Icons.search,
                                color: Colors.blue,
                              ),
                            ),
                            onChanged: (String value) {
                              StoreProvider.of<AppState>(context).dispatch(SetSearchParam(value: value));
                              StoreProvider.of<AppState>(context).dispatch(FilterOrders());
                            },
                          ),
                        ),
                        //Expanded(child: SizedBox()),
                        filterOptions.selectedClient != null
                            ? Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(filterOptions.selectedClient!.name),
                                    IconButton(
                                      onPressed: () {
                                        StoreProvider.of<AppState>(context).dispatch(SetSelectedClient(null));
                                        StoreProvider.of<AppState>(context).dispatch(FilterOrders());
                                      },
                                      icon: Icon(
                                        Icons.cancel_outlined,
                                        color: Colors.red,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            : SizedBox(),
                      ],
                    );
                  });
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}
