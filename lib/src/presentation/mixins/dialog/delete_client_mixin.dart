import 'package:auto_ilitoi/src/actions/firebase_actions/client_actions/index.dart';
import 'package:auto_ilitoi/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

Future<void> showDeleteClient(BuildContext context, Client client) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          'Sunteti sigur ca doriti sa stergeti mecanicul?',
          style: TextStyle(color: Colors.red),
        ),
        content: Text(
            'Odata cu stergerea mecanicului, toate comenzile corespunzatoare acelui mecanic vor fi sterse. Schimbarile sunt ireversibile!'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              StoreProvider.of<AppState>(context).dispatch(DeleteClient(client));
            },
            child: Text(
              'Sterge',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      );
    },
  );
}
