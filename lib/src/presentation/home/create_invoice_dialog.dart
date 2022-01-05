import 'package:auto_ilitoi/src/data/pdf_api.dart';
import 'package:auto_ilitoi/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

Future<void> showCreateInvoiceMixin(BuildContext context) {
  String _serie = '';
  String _numar = '';
  String _modPlata = '';
  String _cif = '';
  String _address = '';

  String _serieError = '';
  String _numarError = '';
  String _modPlataError = '';
  String _cifError = '';
  String _addressError = '';

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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 284,
                      child: TextField(
                        decoration: new InputDecoration(
                          errorText: _cifError,
                          labelText: "CIF",
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
                            _cif = value;
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
                          errorText: _addressError,
                          labelText: "Adresa",
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
                            _address = value;
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
                        modPlata: _modPlata,
                        cif: _cif,
                        address: _address);
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
                      if (_cif == '') {
                        _cifError = 'Cif invalid';
                      }
                      if (_address == '') {
                        _addressError = 'Adresa invalida';
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
