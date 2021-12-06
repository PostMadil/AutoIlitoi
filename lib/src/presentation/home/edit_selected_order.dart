import 'dart:developer';

import 'package:auto_ilitoi/src/actions/app_logic/index.dart';
import 'package:auto_ilitoi/src/actions/firebase_actions/index.dart';
import 'package:auto_ilitoi/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class EditSelectedOrder extends StatefulWidget {
  const EditSelectedOrder({Key? key, required Order order})
      : order = order,
        super(key: key);
  final Order order;

  @override
  _EditSelectedOrderState createState() => _EditSelectedOrderState();
}

class _EditSelectedOrderState extends State<EditSelectedOrder> {
  String _numarInmatriculare = '';
  String _serieSasiu = '';
  String _nume = '';
  String _telefon = '';
  double _total = 0;
  bool _isPaid = false;
  String _cif = '';
  String _adresa = '';

  List<CarPartBuilder> items = <CarPartBuilder>[];

  List<String?> _nameErrorText = <String?>[];
  List<TextEditingController> _nameFieldControlers = <TextEditingController>[];
  List<String?> _codeErrorText = <String?>[];
  List<TextEditingController> _codeFieldControlers = <TextEditingController>[];
  List<String?> _qtyErrorText = <String?>[];
  List<TextEditingController> _qtyFieldControlers = <TextEditingController>[];
  List<String?> _priceErrorText = <String?>[];
  List<TextEditingController> _priceFieldControlers = <TextEditingController>[];
  List<TextEditingController> _typeFieldControlers = <TextEditingController>[];

  String _type = '';
  String _numePiesa = '';
  String _codPiesa = '';
  String _pretPiesa = '';
  String _qty = '';

  bool itemsAreValid() {
    return false;
  }

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

  void recalculate() {
    double newTotal = 0;
    items.forEach((element) {
      if (isValidItemForTotal(element)) {
        newTotal += double.parse(
            ((double.parse(element.build().price!) * double.parse(element.build().qty!)) * 1.19).toStringAsFixed(2));
      }
    });
    setState(() {
      _total = newTotal;
    });
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      log('STATE REINSTANTIATED');
      widget.order.items.forEach((CarPart part) {
        items.add(part.toBuilder());
      });
      //Getting the errorTexts
      items.forEach((element) {
        //Add controllers for each text
        _nameFieldControlers.add(TextEditingController()..text = element.name == null ? '' : element.name!);
        _codeFieldControlers.add(TextEditingController()..text = element.code == null ? '' : element.code!);
        _typeFieldControlers.add(TextEditingController()..text = element.type == null ? '' : element.type!);
        _qtyFieldControlers.add(TextEditingController()..text = element.qty == null ? '' : element.qty!);
        _priceFieldControlers.add(TextEditingController()..text = element.price == null ? '' : element.price!);

        //Verify name
        if (element.name == '' || element.name == null) {
          _nameErrorText.add('Numele este invalid');
        } else {
          _nameErrorText.add(null);
        }
        //Verify cod
        if (element.code == '' || element.code == null) {
          _codeErrorText.add('CodInvalid');
        } else {
          _codeErrorText.add(null);
        }
        //Verify qty
        if (element.qty == '' || element.qty == null) {
          _qtyErrorText.add('Cantitate invalida');
        } else {
          if (double.tryParse(element.qty!) == null) {
            _qtyErrorText.add('Cantitate invalida');
          } else {
            _qtyErrorText.add(null);
          }
        }
        //Verify price
        if (element.price == '' || element.price == null) {
          _priceErrorText.add('Pret invalid');
        } else {
          if (double.tryParse(element.price!) == null) {
            _priceErrorText.add('Pret invalid');
          } else {
            _priceErrorText.add(null);
          }
        }
      });
      _numarInmatriculare = widget.order.carPlate;
      _serieSasiu = widget.order.chassisNumber;
      _nume = widget.order.name;
      _telefon = widget.order.phoneNumber;
      _total = double.parse(widget.order.total);
      _isPaid = widget.order.paid;

      if (widget.order.address == null)
        _adresa = '';
      else
        _adresa = widget.order.address!;
      if (widget.order.cif == null)
        _cif = '';
      else
        _cif = widget.order.cif!;
    });
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

  Widget getHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
            onPressed: () {
              StoreProvider.of<AppState>(context).dispatch(SetSelectedView(1));
            },
            icon: Icon(Icons.arrow_back_rounded)),
        SelectableText('Modifica detaliile comenzii:'),
        const SizedBox(),
      ],
    );
  }

  Widget getNameAndPlateFormFields() {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width / 6,
            child: TextFormField(
              decoration: new InputDecoration(
                labelText: "Nume",
                fillColor: Colors.white,
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(25.0),
                  borderSide: new BorderSide(),
                ),
                //fillColor: Colors.green
              ),
              validator: (String? val) {
                if (val == '') {
                  return "Nume cannot be empty";
                } else {
                  return null;
                }
              },
              keyboardType: TextInputType.emailAddress,
              style: new TextStyle(
                fontFamily: "Poppins",
              ),
              onChanged: (value) {
                _nume = value;
              },
              initialValue: _nume,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width / 6,
            child: TextFormField(
              decoration: new InputDecoration(
                labelText: "Numar inmatriculare",
                fillColor: Colors.white,
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(25.0),
                  borderSide: new BorderSide(),
                ),
                //fillColor: Colors.green
              ),
              validator: (String? val) {
                if (val == '') {
                  return "Numar inmatriculare cannot be empty";
                } else {
                  return null;
                }
              },
              keyboardType: TextInputType.emailAddress,
              style: new TextStyle(
                fontFamily: "Poppins",
              ),
              onChanged: (value) {
                _numarInmatriculare = value;
              },
              initialValue: _numarInmatriculare,
            ),
          ),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }

  Widget getPhoneAndVin() {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width / 6,
            child: TextFormField(
              decoration: new InputDecoration(
                labelText: "Telefon: ",
                fillColor: Colors.white,
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(25.0),
                  borderSide: new BorderSide(),
                ),
                //fillColor: Colors.green
              ),
              validator: (String? val) {
                if (val == '') {
                  return "Telefon cannot be empty";
                } else {
                  return null;
                }
              },
              keyboardType: TextInputType.emailAddress,
              style: new TextStyle(
                fontFamily: "Poppins",
              ),
              onChanged: (value) {
                _telefon = value;
              },
              initialValue: _telefon,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width / 6,
            child: TextFormField(
              decoration: new InputDecoration(
                labelText: "Serie sasiu: ",
                fillColor: Colors.white,
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(25.0),
                  borderSide: new BorderSide(),
                ),
                //fillColor: Colors.green
              ),
              validator: (String? val) {
                if (val == '') {
                  return "Serie sasiu cannot be empty";
                } else {
                  return null;
                }
              },
              keyboardType: TextInputType.emailAddress,
              style: new TextStyle(
                fontFamily: "Poppins",
              ),
              onChanged: (value) {
                _serieSasiu = value;
              },
              initialValue: _serieSasiu,
            ),
          ),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }

  Widget getCifAndAdress() {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width / 6,
            child: TextFormField(
              initialValue: _cif,
              decoration: new InputDecoration(
                labelText: "CIF *optional",
                fillColor: Colors.white,
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(25.0),
                  borderSide: new BorderSide(),
                ),
                //fillColor: Colors.green
              ),
              validator: (String? val) {
                log("validated cif: $_cif");
                return null;
              },
              keyboardType: TextInputType.emailAddress,
              style: new TextStyle(
                fontFamily: "Poppins",
              ),
              onChanged: (value) {
                setState(() {
                  _cif = value;
                  log("EDIT CIF: $_cif");
                });
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width / 6,
            child: TextFormField(
              initialValue: _adresa,
              decoration: new InputDecoration(
                labelText: "ADRESA *optional",
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
                  _adresa = value;
                });
              },
            ),
          ),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(child: Builder(
      builder: (BuildContext context) {
        return Column(
          children: <Widget>[
            //HEADER
            getHeader(context),
            Padding(
              padding: const EdgeInsets.all(56.0),
              child: Column(
                children: <Widget>[
                  getNameAndPlateFormFields(),
                  getPhoneAndVin(),
                  getCifAndAdress(),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[const SelectableText('TOTAL: '), SelectableText(_total.toString())],
                      ),
                      Row(
                        children: <Widget>[
                          const SelectableText('ACHITAT: '),
                          Checkbox(
                            checkColor: Colors.white,
                            fillColor: MaterialStateProperty.resolveWith(getColor),
                            value: _isPaid,
                            onChanged: (bool? value) {
                              setState(() {
                                log('Initial variaaable: $_isPaid');
                                _isPaid = !_isPaid;
                                log('Achitat was pressed and changed to $_isPaid');
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Divider(),
                  Container(
                    height: MediaQuery.of(context).size.height / 3 - 50,
                    width: MediaQuery.of(context).size.width * 4 / 5 - 48,
                    color: Colors.white70,
                    child: ListView.builder(
                        itemCount: items.length,
                        itemBuilder: (BuildContext context, int index) {
                          log('total items: ${items.length}');
                          log('First item name: ${items[index].name}');
                          log('building item at index: $index');
                          String _initialName = items[index].name!;
                          return Card(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  width: 250,
                                  child: TextField(
                                    controller: _nameFieldControlers[index],
                                    decoration: InputDecoration(
                                      labelText: 'NUME PRODUS/SERVICIU',
                                      errorText: _nameErrorText[index],
                                    ),
                                    onChanged: (value) {
                                      setState(() {
                                        items[index].name = value;
                                        _nameFieldControlers[index].text = value;
                                        if (items[index].build().name == '') {
                                          _nameErrorText[index] = 'Nume invalid';
                                        } else {
                                          _nameErrorText[index] = null;
                                        }
                                      });
                                    },
                                  ),
                                ),
                                Container(
                                  width: 50,
                                  child: TextField(
                                    controller: _typeFieldControlers[index],
                                    decoration: InputDecoration(
                                      labelText: 'UM',
                                    ),
                                    onChanged: (value) {
                                      setState(() {
                                        _typeFieldControlers[index].text = value;
                                        items[index].type = value;
                                      });
                                    },
                                  ),
                                ),
                                //items[index].type == null? Text(''):Text(items[index].type!),
                                Container(
                                  width: 200,
                                  child: TextField(
                                    controller: _codeFieldControlers[index],
                                    decoration: InputDecoration(
                                      errorText: _codeErrorText[index],
                                      labelText: 'COD PIESA',
                                    ),
                                    onChanged: (value) {
                                      setState(() {
                                        _codeFieldControlers[index].text = value;
                                        items[index].code = value;
                                        if (items[index].build().code == '') {
                                          _codeErrorText[index] = 'Cod invalid';
                                        } else {
                                          _codeErrorText[index] = null;
                                        }
                                      });
                                    },
                                  ),
                                ),
                                //Text(items[index].build().code),
                                Container(
                                  width: 150,
                                  child: TextField(
                                    controller: _qtyFieldControlers[index],
                                    decoration: InputDecoration(
                                      labelText: 'CANTITATE',
                                      errorText: _qtyErrorText[index],
                                    ),
                                    onChanged: (value) {
                                      setState(() {
                                        _qtyFieldControlers[index].text = value;
                                        items[index].qty = value;
                                        if (double.tryParse(value) != null) {
                                          _qtyErrorText[index] = null;
                                        } else {
                                          _qtyErrorText[index] = 'Cantitate invalida';
                                        }
                                        recalculate();
                                      });
                                    },
                                  ),
                                ),
                                //Text(items[index].qty.toString()),
                                Container(
                                  width: 150,
                                  child: TextField(
                                    controller: _priceFieldControlers[index],
                                    decoration: InputDecoration(
                                      labelText: 'PRET',
                                      errorText: _priceErrorText[index],
                                    ),
                                    onChanged: (value) {
                                      setState(() {
                                        _priceFieldControlers[index].text = value;
                                        items[index].price = value;
                                        if (double.tryParse(value) != null) {
                                          _priceErrorText[index] = null;
                                        } else {
                                          _priceErrorText[index] = 'Pret invalid';
                                        }
                                        recalculate();
                                      });
                                    },
                                  ),
                                ),
                                //Text(items[index].price.toString()),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      //REMOVING THE ERRORS OF ITEM AT INDEX
                                      _priceErrorText.removeAt(index);
                                      log(_priceErrorText.toString());
                                      _qtyErrorText.removeAt(index);
                                      log(_qtyErrorText.toString());
                                      _nameErrorText.removeAt(index);
                                      log(_nameErrorText.toString());
                                      _codeErrorText.removeAt(index);
                                      log(_codeErrorText.toString());

                                      //REMOVING THE STATE TEXT OF ITEM AT INDEX
                                      _codeFieldControlers.removeAt(index);
                                      _nameFieldControlers.removeAt(index);
                                      _typeFieldControlers.removeAt(index);
                                      _qtyFieldControlers.removeAt(index);
                                      _priceFieldControlers.removeAt(index);
                                      //REMOVING THE ITEM AT INDEX
                                      items.removeAt(index);
                                      //RECALCULATE TOTAL
                                      recalculate();
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
                        }),
                  ),
                  Form(
                    child: Builder(
                      builder: (BuildContext context) {
                        return Container(
                          height: MediaQuery.of(context).size.height / 10,
                          width: MediaQuery.of(context).size.width / 2,
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
                                  onChanged: (value) {
                                    _numePiesa = value;
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
                                  onChanged: (value) {
                                    _type = value;
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
                                    _codPiesa = value;
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
                                    _qty = value;
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
                                    _pretPiesa = value;
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
                                      if (Form.of(context)!.validate()) {
                                        setState(() {
                                          items.add(CarPart.fromData(
                                                  name: _numePiesa,
                                                  code: _codPiesa,
                                                  price: _pretPiesa,
                                                  qty: _qty,
                                                  type: _type)
                                              .toBuilder());
                                          if (isValidItemForTotal(CarPart.fromData(
                                                  name: _numePiesa,
                                                  code: _codPiesa,
                                                  price: _pretPiesa,
                                                  qty: _qty,
                                                  type: _type)
                                              .toBuilder())) {
                                            _total += double.parse(_pretPiesa) * double.parse(_qty) * 1.19;
                                          }
                                          //ADDING ERROR CHECKERS FOR NEW ITEM
                                          if (_numePiesa == '' || _numePiesa == null) {
                                            _nameErrorText.add('Numele este invalid');
                                          } else {
                                            _nameErrorText.add(null);
                                          }
                                          //Verify cod
                                          if (_codPiesa == '' || _codPiesa == null) {
                                            _codeErrorText.add('CodInvalid');
                                          } else {
                                            _codeErrorText.add(null);
                                          }
                                          //Verify qty
                                          if (_qty == '' || _qty == null) {
                                            _qtyErrorText.add('Cantitate invalida');
                                          } else {
                                            if (double.tryParse(_qty) == null) {
                                              _qtyErrorText.add('Cantitate invalida');
                                            } else {
                                              _qtyErrorText.add(null);
                                            }
                                          }
                                          //ADDING THE CONTROLLERS FOR THE NEW ITEM
                                          _nameFieldControlers.add(TextEditingController()..text = _numePiesa);
                                          _typeFieldControlers.add(TextEditingController()..text = _type);
                                          _codeFieldControlers.add(TextEditingController()..text = _codPiesa);
                                          _qtyFieldControlers.add(TextEditingController()..text = _qty);
                                          _priceFieldControlers.add(TextEditingController()..text = _pretPiesa);
                                          //Verify price
                                          if (_pretPiesa == '' || _pretPiesa == null) {
                                            _priceErrorText.add('Pret invalid');
                                          } else {
                                            if (double.tryParse(_pretPiesa) == null) {
                                              _priceErrorText.add('Pret invalid');
                                            } else {
                                              _priceErrorText.add(null);
                                            }
                                          }

                                          //
                                          _pretPiesa = '';
                                          _qty = '';
                                          _codPiesa = '';
                                          _numePiesa = '';
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
              ),
            ),
            ElevatedButton(
              child: Text('SALVEAZA'),
              onPressed: () {
                if (Form.of(context)!.validate()) {
                  List<CarPart> builtItems = items.map((e) => e.build()).toList();
                  StoreProvider.of<AppState>(context).dispatch(UpdateOrder(Order.fromData(
                      id: widget.order.id,
                      details: OrderDetails.fromData(
                        carPlate: _numarInmatriculare,
                        chassisNumber: _serieSasiu,
                        name: _nume,
                        phoneNumber: _telefon,
                        total: _total.toString(),
                        paid: _isPaid,
                        cif: _cif,
                        address: _adresa,
                      ),
                      items: builtItems,
                      dateTime: widget.order.dateTime)));
                }
              },
            ),
          ],
        );
      },
    ));
  }
}
