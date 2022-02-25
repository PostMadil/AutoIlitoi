
import 'package:auto_ilitoi/src/actions/firebase_actions/client_actions/index.dart';
import 'package:auto_ilitoi/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

Future<void> showEditClientDialog(BuildContext context, Client client) {


  String _name = client.name;
  String _phoneNumber = client.phoneNumber;

  String? _nameErrorText = null;
  String? _phoneNumberErrorText = null;

  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: Text('Editeaza mecanicul'),
              content: Container(
                child: Form(
                  child: Builder(
                    builder: (BuildContext context) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 4 - 16,
                              child: TextFormField(
                                decoration: new InputDecoration(
                                  errorText: _nameErrorText,
                                  labelText: "Nume",
                                  fillColor: Colors.white,
                                  border: new OutlineInputBorder(
                                    borderRadius: new BorderRadius.circular(25.0),
                                    borderSide: new BorderSide(),
                                  ),
                                  //fillColor: Colors.green
                                ),
                                initialValue: _name,
                                keyboardType: TextInputType.emailAddress,
                                style: new TextStyle(
                                  fontFamily: "Poppins",
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    _name = value;
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
                                  errorText: _phoneNumberErrorText,
                                  labelText: "Telefon",
                                  fillColor: Colors.white,
                                  border: new OutlineInputBorder(
                                    borderRadius: new BorderRadius.circular(25.0),
                                    borderSide: new BorderSide(),
                                  ),
                                  //fillColor: Colors.green
                                ),
                                initialValue: _phoneNumber,
                                keyboardType: TextInputType.emailAddress,
                                style: new TextStyle(
                                  fontFamily: "Poppins",
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    _phoneNumber = value;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Anulare'),
                ),
                TextButton(
                  child: const Text('Create'),
                  onPressed: () {
                    if (_name.trim() == '') {
                      setState(() {
                        _nameErrorText = 'Nu poate fi gol';
                      });
                    } else {
                      _nameErrorText = null;
                    }
                    if (_phoneNumber.trim() == '') {
                      setState(() {
                        _phoneNumberErrorText = 'Nu poate fi gol';
                      });
                    } else {
                      _phoneNumberErrorText = null;
                    }
                    if (_name.trim() != '' && _phoneNumber.trim() != '') {
                      StoreProvider.of<AppState>(context).dispatch(
                          UpdateClient(Client.fromData(id: client.id, name: _name, phoneNumber: _phoneNumber)));
                      Navigator.of(context).pop();
                    }
                  },
                ),
              ],
            );
          },
        );
      });
}
