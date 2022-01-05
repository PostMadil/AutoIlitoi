import 'package:flutter/material.dart';

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
