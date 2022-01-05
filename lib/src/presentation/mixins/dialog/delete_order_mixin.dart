import 'package:auto_ilitoi/src/actions/firebase_actions/index.dart';
import 'package:auto_ilitoi/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

Future<void> showDeleteOrder(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          'Sunteti sigur ca doriti sa stergeti comanda?',
          style: TextStyle(color: Colors.red),
        ),
        content: Text('O comanda stearsa nu poate fi restituita.'),
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
              StoreProvider.of<AppState>(context).dispatch(DeleteOrderStart());
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
