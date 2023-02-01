import 'dart:html' as html;

import 'package:auto_ilitoi/src/models/index.dart';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class PdfApi {
  static Future<void> generate({
    required Order order,
    required String serie,
    required String numar,
    required String modPlata,
    required String cif,
    required String address,
    required bool isRon,
    required bool isOffer,
  }) async {
    //Create the style/font

    final myFont = await rootBundle.load('assets/fonts/DejaVuSans.ttf');
    final ttf = pw.Font.ttf(myFont);

    final pdf = pw.Document();

    pw.TextStyle headerStyle = pw.TextStyle(font: ttf, fontSize: 10);

    if (!isOffer) {
      pdf.addPage(pw.MultiPage(
          pageFormat: PdfPageFormat.a4,
          build: (pw.Context context) {
            return [
              buildHeader1(serie: serie, numar: numar, headerStyle: headerStyle, isRon: isRon),
              buildHeader2(order: order, style: headerStyle, cif: cif, address: address),
              buildOrder(order, ttf),
              buildFooter(order: order, style: headerStyle, modPlata: modPlata, isRon: isRon),
            ];
          }));
    } else {
      pdf.addPage(pw.MultiPage(
          pageFormat: PdfPageFormat.a4,
          build: (pw.Context context) {
            return <pw.Widget>[
              buildOfferHeader(make: order.make!, model: order.model!),
              buildOrder(order, ttf),
              buildFooter(order: order, style: headerStyle, modPlata: '', isRon: isRon),
            ];
          }));
    }

    final bytes = await pdf.save();

    final blob = html.Blob([bytes], 'application/bills/${order.name + order.dateTime}');

    final url = html.Url.createObjectUrlFromBlob(blob);
    final anchor = html.document.createElement('a') as html.AnchorElement
      ..href = url
      ..style.display = 'none'
      ..download = '${order.name + order.dateTime}.pdf';
    html.document.body!.children.add(anchor);
    anchor.click();
    html.document.body!.children.remove(anchor);
    html.Url.revokeObjectUrl(url);
  }

  static pw.Widget buildOfferHeader({required String make, required String model}) {
    return pw.Padding(
        padding: const pw.EdgeInsets.all(16),
        child: pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.start,
          children: <pw.Widget>[
            pw.Text(make),
            pw.SizedBox(width: 8),
            pw.Text(model),
          ],
        ));
  }

  static pw.Widget buildHeader1(
      {required String serie, required String numar, required pw.TextStyle headerStyle, required bool isRon}) {
    DateTime dateTime = DateTime.now();
    return pw.Padding(
      padding: const pw.EdgeInsets.all(16),
      child: pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: <pw.Widget>[
          pw.Text('FACTURA', style: pw.TextStyle(fontSize: 14)),
          pw.Text(
            'Serie $serie Numar $numar',
            style: headerStyle,
          ),
          pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
            children: <pw.Widget>[
              pw.Text('Data ${dateTime.day}.${dateTime.month}.${dateTime.year}', style: headerStyle),
              pw.Text(
                isRon == true ? '-RON-' : '-EUR-',
                style: headerStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }

  static pw.Widget buildHeader2(
      {required Order order, required pw.TextStyle style, required String cif, required String address}) {
    return pw.Column(
      children: <pw.Widget>[
        pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
          children: <pw.Widget>[
            pw.Container(
              width: 240,
              child: pw.Text('Furnizor', style: style),
            ),
            pw.Container(
              width: 240,
              child: pw.Text('Client', style: style),
            ),
            pw.Text('', style: style),
          ],
        ),
        pw.Divider(),
        pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
          children: <pw.Widget>[
            pw.Container(
              height: 90,
              width: 240,
              //color: PdfColor.fromHex('#bae1ff'),
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: <pw.Widget>[
                  pw.Text('S.C. ILIVAS COM SRL', style: style),
                  pw.SizedBox(height: 8),
                  pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: <pw.Widget>[
                      pw.Text('CIF RO3174575', style: style),
                      pw.Text('RC J33/1612/1992', style: style),
                      pw.Text(''),
                    ],
                  ),
                  pw.SizedBox(height: 8),
                  pw.Text('CAJVANA nr. 1083 jud. SUCEAVA', style: style),
                  pw.Text('Banca TRANSILVANIA', style: style),
                  pw.Text('IBAN', style: style),
                  pw.Text('RO92BTRLRONCRT0510292303', style: style),
                ],
              ),
            ),
            pw.Container(
              width: 240,
              height: 60,
              //color: PdfColor.fromHex('#ffd280'),
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: <pw.Widget>[
                  pw.Text(order.name.toString(), style: style),
                  pw.SizedBox(height: 8),
                  pw.Text('CIF: ${cif}', style: style),
                  pw.Text(address.toString(), style: style),
                ],
              ),
            ),
          ],
        ),
        pw.Divider(),
      ],
    );
  }

  static pw.Widget buildOrder(Order order, pw.Font ttf) {
    final headers = <String>[
      'Nr. crt.',
      'Denumire produse/servicii',
      'UM',
      'Cantitate',
      'Pret unitar',
      'Valoare',
      'TVA(19%)',
    ];
    int index = 0;
    final data = order.items.map((CarPart item) {
      index++;
      return <String>[
        index.toString(),
        item.name!,
        item.type == null ? '' : item.type!,
        double.parse(item.qty!).toStringAsFixed(3),
        ((double.parse(item.price!)) / 1.19).toStringAsFixed(4),
        (double.parse(((double.parse(item.price!)) / 1.19).toStringAsFixed(4)) * double.parse(item.qty!))
            .toStringAsFixed(2),
        (double.parse(item.price!) / 1.19 * double.parse(item.qty!) * 0.19).toStringAsFixed(2),
      ];
    }).toList();

    return pw.Table.fromTextArray(
      data: data,
      headers: headers,
      border: null,
      headerStyle: pw.TextStyle(fontWeight: pw.FontWeight.normal, font: ttf, fontSize: 8),
      headerDecoration: pw.BoxDecoration(color: PdfColors.grey300),
      cellHeight: 16,
      cellStyle: pw.TextStyle(font: ttf, fontSize: 8),
      cellAlignments: {
        0: pw.Alignment.centerRight,
        1: pw.Alignment.centerLeft,
        2: pw.Alignment.centerRight,
        3: pw.Alignment.centerRight,
        4: pw.Alignment.centerRight,
        5: pw.Alignment.centerRight,
        6: pw.Alignment.centerRight,
      },
    );
  }

  static pw.Widget buildFooter(
      {required Order order, required pw.TextStyle style, required String modPlata, required bool isRon}) {
    double valoareTotala = 0;
    double tvaTotal = 0;
    order.items.forEach((CarPart item) {
      valoareTotala += double.parse((double.parse(item.price!) / 1.19 * double.parse(item.qty!)).toStringAsFixed(2));
      tvaTotal += double.parse((double.parse(item.price!) / 1.19 * double.parse(item.qty!) * 0.19).toStringAsFixed(2));
    });

    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: <pw.Widget>[
        pw.Divider(),
        pw.Text(modPlata.toUpperCase(), style: style),
        pw.Divider(),
        pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
          children: <pw.Widget>[
            pw.Container(
              width: 100,
              height: 80,
              // color: PdfColor.fromHex('#cd6090'),
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: <pw.Widget>[
                  pw.Text('Emis de', style: style),
                  pw.Text('ILITOI ADRIAN', style: style),
                  pw.Text('CI. SERIA: XV ', style: style),
                  pw.Text('NR. 352438 ', style: style),
                ],
              ),
            ),
            pw.Container(
              width: 225,
              height: 80,
              // color: PdfColor.fromHex('#ffe599'),
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: <pw.Widget>[
                  pw.Text('Date privind expeditia', style: style),
                  pw.Text('Numele delegatului', style: style),
                  pw.Text('C.I. seria:          nr:           eliberat de:    ', style: style),
                  pw.Text('Mijlocul de tansport: ', style: style),
                ],
              ),
            ),
            pw.Container(
              width: 25,
              height: 80,
              //color: PdfColor.fromHex('#bae1ff'),
            ),
            pw.Container(
              width: 145,
              height: 80,
              //color: PdfColor.fromHex('#c9c9ff'),
              child: pw.Column(
                children: <pw.Widget>[
                  pw.Row(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: <pw.Widget>[
                      pw.Text('  '),
                      pw.Text(valoareTotala.toStringAsFixed(2), style: style),
                      pw.Text(tvaTotal.toStringAsFixed(2), style: style),
                    ],
                  ),
                  pw.SizedBox(height: 40),
                  pw.Divider(),
                  pw.Text(
                      isRon == true
                          ? 'Total: ${(tvaTotal + valoareTotala).toStringAsFixed(2)} RON'
                          : 'Total: ${(tvaTotal + valoareTotala).toStringAsFixed(2)} EUR',
                      style: style),
                ],
              ),
            ),
          ],
        ),
        pw.Divider(),
      ],
    );
  }
}
