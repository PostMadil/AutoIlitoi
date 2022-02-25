import 'package:auto_ilitoi/src/data/pdf_api.dart';
import 'package:auto_ilitoi/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

Future<void> showCreateOfferMixin(BuildContext context) {
  bool isRon = true;

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
                      child: Row(
                        children: <Widget>[
                          Text('RON:'),
                          Checkbox(
                            onChanged: (bool? value) {
                              setState(() {
                                isRon = true;
                              });
                            },
                            value: isRon,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 284,
                      child: Row(
                        children: <Widget>[
                          Text('EURO:'),
                          Checkbox(
                            onChanged: (bool? value) {
                              setState(() {
                                isRon = false;
                              });
                            },
                            value: !isRon,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                  child: Text('GENEREAZA OFERTA'),
                  onPressed: () {
                    PdfApi.generate(
                      order: StoreProvider.of<AppState>(context).state.selectedOrder!,
                      serie: '',
                      numar: '',
                      modPlata: '',
                      cif: '',
                      address: '',
                      isRon: isRon,
                      isOffer: true,
                    );

                    Navigator.of(context).pop();
                  }),
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
