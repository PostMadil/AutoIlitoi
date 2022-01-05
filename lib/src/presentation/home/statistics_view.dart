import 'package:auto_ilitoi/src/container/index.dart';
import 'package:auto_ilitoi/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

Widget statisticsView() {
  return StatisticsContainer(builder: (BuildContext context, Statistics statistics) {
    return Container(
      height: MediaQuery.of(context).size.height - 48,
      width: MediaQuery.of(context).size.width * 4 / 5 - 48,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: (MediaQuery.of(context).size.height - 48 - 32) / 2,
                  width: (MediaQuery.of(context).size.width * 4 / 5 - 48 - 64) / 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Comenzi'),
                      SfSparkLineChart(
                        trackball: const SparkChartTrackball(),
                        data: statistics.ordersPerMonth,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: (MediaQuery.of(context).size.height - 48) / 2 - 32,
                  width: (MediaQuery.of(context).size.width * 4 / 5 - 48 - 64) / 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Incasari'),
                      SfSparkLineChart(
                        trackball: const SparkChartTrackball(),
                        data: statistics.moneyPerMonth,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent), borderRadius: BorderRadius.circular(20)),
                  height: (MediaQuery.of(context).size.height - 48) / 2 - 72 - 16,
                  width: (MediaQuery.of(context).size.width * 4 / 5 - 48 - 86) / 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'TOTAL: ' + statistics.total.toString() + " RON",
                        style: TextStyle(fontSize: 32, color: Colors.black87),
                      ),
                      SizedBox(height: 16),
                      Icon(
                        Icons.monetization_on_rounded,
                        size: 32,
                        color: Colors.black87,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent), borderRadius: BorderRadius.circular(20)),
                  height: (MediaQuery.of(context).size.height - 48) / 2 - 72 - 16,
                  width: (MediaQuery.of(context).size.width * 4 / 5 - 48 - 86) / 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Achitat: ' + statistics.totalPaid.toString() + " RON",
                        style: TextStyle(fontSize: 32, color: Colors.greenAccent),
                      ),
                      SizedBox(height: 16),
                      Icon(
                        Icons.monetization_on_rounded,
                        size: 32,
                        color: Colors.greenAccent,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent), borderRadius: BorderRadius.circular(20)),
                  height: (MediaQuery.of(context).size.height - 48) / 2 - 72 - 16,
                  width: (MediaQuery.of(context).size.width * 4 / 5 - 48 - 86) / 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Neachitat: ' + statistics.totalUnpaid.toString() + " RON",
                        style: TextStyle(fontSize: 32, color: Colors.red),
                      ),
                      SizedBox(height: 16),
                      Icon(
                        Icons.money_off,
                        size: 32,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  });
}
