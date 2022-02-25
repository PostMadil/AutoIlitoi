import 'dart:developer';

import 'package:auto_ilitoi/src/actions/firebase_actions/index.dart';
import 'package:auto_ilitoi/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

mixin CreateOrderMixin {
  Future<void> showCreateDialog(BuildContext context, bool isOffer) {
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

    String _numePiesa = '';
    String _codPiesa = '';
    String _pretPiesa = '';
    // String _numarInmatriculare = '';
    // String _serieSasiu = '';
    // String _nume = '';
    // String _telefon = '';
    // double _total = 0.0;
    // bool _isPaid = false;
    // String _cif = '';
    // String _adresa = '';
    //List<CarPartBuilder> items = <CarPartBuilder>[];

    String? _numeErrorText = null;
    String? _numarInmatriculareErrorText = null;
    String? _telefonErrorText = null;
    String? _serieSasiuErrorText = null;

    bool isValidItemForTotal(CarPartBuilder b) {
      if (b.qty == null || b.qty == '') {
        return false;
      } else {
        if (double.tryParse(b.qty!) == null) {
          return false;
        }
      }
      if (b.price == null || b.price == '') {
        return false;
      } else {
        if (double.tryParse(b.price!) == null) {
          return false;
        }
      }
      return true;
    }

    return showDialog(
        context: context,
        builder: (BuildContext context) {
          bool _chooseFromClients = false;
          bool _canChooseFromClients = true;

          List<Client> clients = StoreProvider.of<AppState>(context).state.clients.toList();

          Client selectedClient = Client.fromData(id: '', name: '', phoneNumber: '');
          if (clients.isEmpty) {
            _canChooseFromClients = false;
            log('cannot choose from clients');
          } else {
            selectedClient = clients.first;
          }

          String _numarInmatriculare = '';
          String _serieSasiu = '';
          String _nume = '';
          String _telefon = '';
          String _qty = '';
          double _total = 0.0;
          bool _isPaid = false;
          String _make = '';
          String _model = '';
          String _type = '';
          String _provider = '';
          List<CarPartBuilder> items = <CarPartBuilder>[];

          return StatefulBuilder(
            builder: (context, setState) {
              return AlertDialog(
                title: Text('Creaza o noua comanda:'),
                content: Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      child: Form(child: Builder(
                        builder: (BuildContext context) {
                          return Column(
                            children: <Widget>[
                              clients.isEmpty
                                  ? SizedBox()
                                  : Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Checkbox(
                                          value: _chooseFromClients,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              _chooseFromClients = !_chooseFromClients;
                                              _nume = selectedClient.name;
                                              _telefon = selectedClient.phoneNumber;
                                            });
                                          },
                                        ),
                                        Text('Alege dintre clienti'),
                                      ],
                                    ),
                              _chooseFromClients == false || _canChooseFromClients == false
                                  ? Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            width: MediaQuery.of(context).size.width / 4 - 16,
                                            child: TextFormField(
                                              decoration: new InputDecoration(
                                                errorText: _numeErrorText,
                                                labelText: "Nume",
                                                fillColor: Colors.white,
                                                border: new OutlineInputBorder(
                                                  borderRadius: new BorderRadius.circular(25.0),
                                                  borderSide: new BorderSide(),
                                                ),
                                                //fillColor: Colors.green
                                              ),
                                              initialValue: _nume,
                                              keyboardType: TextInputType.emailAddress,
                                              style: new TextStyle(
                                                fontFamily: "Poppins",
                                              ),
                                              onChanged: (value) {
                                                setState(() {
                                                  _nume = value;
                                                });
                                              },
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            width: MediaQuery.of(context).size.width / 4 - 16,
                                            child: TextFormField(
                                              decoration: new InputDecoration(
                                                errorText: _telefonErrorText,
                                                labelText: "Telefon",
                                                fillColor: Colors.white,
                                                border: new OutlineInputBorder(
                                                  borderRadius: new BorderRadius.circular(25.0),
                                                  borderSide: new BorderSide(),
                                                ),
                                                //fillColor: Colors.green
                                              ),
                                              initialValue: _telefon,
                                              keyboardType: TextInputType.emailAddress,
                                              style: new TextStyle(
                                                fontFamily: "Poppins",
                                              ),
                                              onChanged: (value) {
                                                setState(() {
                                                  _telefon = value;
                                                });
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  : Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: DropdownButton(
                                        value: selectedClient,
                                        items: clients
                                            .map((Client e) => DropdownMenuItem(
                                                  child: Text(e.name),
                                                  value: e,
                                                ))
                                            .toList(),
                                        onChanged: (Client? client) {
                                          setState(() {
                                            selectedClient = client!;
                                            _nume = client.name;
                                            _telefon = client.phoneNumber;
                                          });
                                        },
                                        isExpanded: true,
                                      ),
                                    ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width / 4 - 16,
                                      child: TextField(
                                        decoration: new InputDecoration(
                                          errorText: _numarInmatriculareErrorText,
                                          labelText: "Numar Inmatriculare",
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
                                            _numarInmatriculare = value;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width / 4 - 16,
                                      child: TextField(
                                        decoration: new InputDecoration(
                                          errorText: _serieSasiuErrorText,
                                          labelText: "Serie sasiu",
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
                                            _serieSasiu = value;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width / 4 - 16,
                                      child: TextFormField(
                                        decoration: new InputDecoration(
                                          labelText: "Marca",
                                          fillColor: Colors.white,
                                          border: new OutlineInputBorder(
                                            borderRadius: new BorderRadius.circular(25.0),
                                            borderSide: new BorderSide(),
                                          ),
                                          //fillColor: Colors.green
                                        ),
                                        validator: (String? val) {
                                          return null;
                                        },
                                        keyboardType: TextInputType.emailAddress,
                                        style: new TextStyle(
                                          fontFamily: "Poppins",
                                        ),
                                        onChanged: (value) {
                                          setState(() {
                                            _make = value;
                                            log("CIF: $_make");
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width / 4 - 16,
                                      child: TextFormField(
                                        decoration: new InputDecoration(
                                          labelText: "Model",
                                          fillColor: Colors.white,
                                          border: new OutlineInputBorder(
                                            borderRadius: new BorderRadius.circular(25.0),
                                            borderSide: new BorderSide(),
                                          ),
                                          //fillColor: Colors.green
                                        ),
                                        validator: (String? val) {
                                          return null;
                                        },
                                        keyboardType: TextInputType.emailAddress,
                                        style: new TextStyle(
                                          fontFamily: "Poppins",
                                        ),
                                        onChanged: (value) {
                                          setState(() {
                                            _model = value;
                                            log("ADDRESS: $_model");
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              //Details tab:
                              Divider(),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text('TOTAL:  $_total RON'),
                                    Row(
                                      children: [
                                        Text('Achitat: '),
                                        Checkbox(
                                          checkColor: Colors.white,
                                          fillColor: MaterialStateProperty.resolveWith(getColor),
                                          value: _isPaid,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              _isPaid = value!;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Divider(),
                              Container(
                                height: MediaQuery.of(context).size.height / 3,
                                width: MediaQuery.of(context).size.width / 2,
                                color: Colors.white70,
                                child: ListView.builder(
                                    itemCount: items.length,
                                    itemBuilder: (BuildContext context, int index) {
                                      if (index == 0 && items.length == 0) {
                                        return Center(
                                          child: Text('Niciun produs adaugat.'),
                                        );
                                      } else {
                                        return Card(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              items[index].name == null || items[index].name == ''
                                                  ? Text('----')
                                                  : Text(items[index].name!),
                                              items[index].provider == null || items[index].provider == ''
                                                  ? Text('----')
                                                  : Text(items[index].provider!),
                                              items[index].type == null || items[index].type == ''
                                                  ? Text('----')
                                                  : Text(items[index].type!),
                                              items[index].code == null || items[index].code == ''
                                                  ? Text('----')
                                                  : Text(items[index].code!),
                                              items[index].qty == null || items[index].qty == ''
                                                  ? Text('----')
                                                  : Text(items[index].qty.toString()),
                                              items[index].price == null || items[index].price == ''
                                                  ? Text('---')
                                                  : Text(items[index].price.toString()),
                                              IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    if (isValidItemForTotal(items[index])) {
                                                      _total -= double.parse(items[index].price!) *
                                                          double.parse(items[index].qty!);
                                                    }
                                                    items.remove(items[index]);
                                                  });
                                                },
                                                icon: Icon(
                                                  Icons.remove_circle,
                                                  color: Colors.red,
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      }
                                    }),
                              ),
                              Form(
                                child: Builder(
                                  builder: (BuildContext context) {
                                    return Container(
                                      height: MediaQuery.of(context).size.height / 10,
                                      width: MediaQuery.of(context).size.width / 1.5,
                                      decoration: BoxDecoration(
                                        color: Colors.white60,
                                        borderRadius: BorderRadius.circular(60),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            width: (MediaQuery.of(context).size.width / 2 - 100) / 5 - 20,
                                            child: TextFormField(
                                              decoration: new InputDecoration(
                                                labelText: "Nume Piesa",
                                                fillColor: Colors.white,
                                                border: new OutlineInputBorder(
                                                  borderRadius: new BorderRadius.circular(25.0),
                                                  borderSide: new BorderSide(),
                                                ),
                                                //fillColor: Colors.green
                                              ),
                                              onChanged: (String value) {
                                                setState(() {
                                                  _numePiesa = value;
                                                  log('Nume piesa: $_numePiesa');
                                                });
                                              },
                                              keyboardType: TextInputType.emailAddress,
                                              style: new TextStyle(
                                                fontFamily: "Poppins",
                                              ),
                                              validator: (String? val) {
                                                return null;
                                              },
                                            ),
                                          ),
                                          Container(
                                            width: 100,
                                            child: TextFormField(
                                              decoration: new InputDecoration(
                                                labelText: "Tip(B,b...)",
                                                fillColor: Colors.white,
                                                border: new OutlineInputBorder(
                                                  borderRadius: new BorderRadius.circular(25.0),
                                                  borderSide: new BorderSide(),
                                                ),
                                                //fillColor: Colors.green
                                              ),
                                              onChanged: (String value) {
                                                setState(() {
                                                  _type = value;
                                                  log('Nume piesa: $_numePiesa');
                                                });
                                              },
                                              keyboardType: TextInputType.emailAddress,
                                              style: new TextStyle(
                                                fontFamily: "Poppins",
                                              ),
                                              validator: (String? val) {
                                                return null;
                                              },
                                            ),
                                          ),
                                          Container(
                                            width: 150,
                                            child: TextFormField(
                                              decoration: new InputDecoration(
                                                labelText: "Provider",
                                                fillColor: Colors.white,
                                                border: new OutlineInputBorder(
                                                  borderRadius: new BorderRadius.circular(25.0),
                                                  borderSide: new BorderSide(),
                                                ),
                                                //fillColor: Colors.green
                                              ),
                                              onChanged: (String value) {
                                                setState(() {
                                                  _provider = value;
                                                  log('Provider: $_provider');
                                                });
                                              },
                                              keyboardType: TextInputType.emailAddress,
                                              style: new TextStyle(
                                                fontFamily: "Poppins",
                                              ),
                                              validator: (String? val) {
                                                return null;
                                              },
                                            ),
                                          ),
                                          Container(
                                            width: (MediaQuery.of(context).size.width / 2 - 100) / 5 - 20,
                                            child: TextFormField(
                                              decoration: new InputDecoration(
                                                labelText: "Cod Piesa",
                                                fillColor: Colors.white,
                                                border: new OutlineInputBorder(
                                                  borderRadius: new BorderRadius.circular(25.0),
                                                  borderSide: new BorderSide(),
                                                ),
                                                //fillColor: Colors.green
                                              ),
                                              onChanged: (value) {
                                                setState(() {
                                                  _codPiesa = value;
                                                  log('Cod piesa: $_codPiesa');
                                                });
                                              },
                                              keyboardType: TextInputType.emailAddress,
                                              style: new TextStyle(
                                                fontFamily: "Poppins",
                                              ),
                                              validator: (String? val) {
                                                return null;
                                              },
                                            ),
                                          ),
                                          Container(
                                            width: (MediaQuery.of(context).size.width / 2 - 100) / 5 - 20,
                                            child: TextFormField(
                                              decoration: new InputDecoration(
                                                labelText: "Cantitate",
                                                fillColor: Colors.white,
                                                border: new OutlineInputBorder(
                                                  borderRadius: new BorderRadius.circular(25.0),
                                                  borderSide: new BorderSide(),
                                                ),
                                                //fillColor: Colors.green
                                              ),
                                              onChanged: (value) {
                                                setState(() {
                                                  _qty = value;
                                                  log('Cod piesa: $_codPiesa');
                                                });
                                              },
                                              keyboardType: TextInputType.emailAddress,
                                              style: new TextStyle(
                                                fontFamily: "Poppins",
                                              ),
                                              validator: (String? val) {
                                                return null;
                                              },
                                            ),
                                          ),
                                          Container(
                                            width: (MediaQuery.of(context).size.width / 2 - 100) / 5 - 20,
                                            child: TextFormField(
                                              decoration: new InputDecoration(
                                                labelText: "Pret Piesa",
                                                fillColor: Colors.white,
                                                border: new OutlineInputBorder(
                                                  borderRadius: new BorderRadius.circular(25.0),
                                                  borderSide: new BorderSide(),
                                                ),
                                                //fillColor: Colors.green
                                              ),
                                              onChanged: (value) {
                                                setState(() {
                                                  _pretPiesa = value;
                                                  log('Pret piesa: $_pretPiesa');
                                                });
                                              },
                                              keyboardType: TextInputType.emailAddress,
                                              style: new TextStyle(
                                                fontFamily: "Poppins",
                                              ),
                                              validator: (String? val) {
                                                return null;
                                              },
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: Container(
                                              width: (MediaQuery.of(context).size.width / 2 - 100) / 5 - 20,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(30),
                                              ),
                                              child: ElevatedButton(
                                                child: Text('Adauga produs'),
                                                onPressed: () {
                                                  log('Nume piesa: $_numePiesa');
                                                  log('Cod piesa: $_codPiesa');
                                                  log('Pret piesa: $_pretPiesa');

                                                  if (Form.of(context)!.validate()) {
                                                    log('validated.');
                                                    setState(() {
                                                      CarPartBuilder newPart = CarPart.fromData(
                                                        name: _numePiesa,
                                                        code: _codPiesa,
                                                        price: _pretPiesa,
                                                        qty: _qty,
                                                        type: _type,
                                                        provider: _provider,
                                                      ).toBuilder();
                                                      items.add(newPart);
                                                      if (isValidItemForTotal(newPart)) {
                                                        _total += double.parse(_pretPiesa) * double.parse(_qty);
                                                      }
                                                      log('Reseting values');
                                                      _pretPiesa = '';
                                                      _codPiesa = '';
                                                      _numePiesa = '';
                                                      _qty = '';
                                                      _type = '';
                                                      Form.of(context)!.reset();
                                                    });
                                                  }
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          );
                        },
                      )),
                    ),
                  ],
                ),
                actions: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 6,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: ElevatedButton(
                          child: const Text(
                            'Creeaza',
                            style: TextStyle(fontSize: 24),
                          ),
                          onPressed: () {
                            if (true) {
                              List<CarPart> builtItems = <CarPart>[];
                              items.forEach((element) {
                                builtItems.add(element.build());
                              });
                              StoreProvider.of<AppState>(context).dispatch(CreateOrder(
                                details: OrderDetails.fromData(
                                  isOffer: isOffer,
                                  carPlate: _numarInmatriculare,
                                  chassisNumber: _serieSasiu,
                                  name: _nume,
                                  phoneNumber: _telefon,
                                  total: _total.toString(),
                                  paid: _isPaid,
                                  make: _make,
                                  model: _model,
                                  clientId: _chooseFromClients == true ? selectedClient.id : null,
                                  finished: false,
                                ),
                                items: builtItems,
                              ));
                              Navigator.pop(context);
                            } else {
                              setState(() {
                                // if (_nume == '') {
                                //   _numeErrorText = 'Nume cannot be empty';
                                // } else {
                                //   _numeErrorText = null;
                                // }
                                // if (_numarInmatriculare == '') {
                                //   _numarInmatriculareErrorText = 'Numar inmatriculare cannot be empty';
                                // } else {
                                //   _numarInmatriculareErrorText = null;
                                // }
                                // if (_telefon == '') {
                                //   _telefonErrorText = 'Telefon cannot be empty';
                                // } else {
                                //   _telefonErrorText = null;
                                // }
                                //
                                // if (_serieSasiu == '') {
                                //   _serieSasiuErrorText = 'Serie cannot be empty';
                                // } else {
                                //   _serieSasiuErrorText = null;
                                // }
                              });
                            }
                          },
                        ),
                      )
                    ],
                  ),
                ],
              );
            },
          );
        });
  }
}
