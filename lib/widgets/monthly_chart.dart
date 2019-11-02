import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../providers/transactions.dart';
import 'dart:math';

class MonthlyChart extends StatelessWidget {
  static const monthNames = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];

  @override
  Widget build(BuildContext context) {
    final transactions = Provider.of<Transactions>(context);
    List<double> amounts = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
    List<month> data = [];

    for (var trans in transactions.transactions) {
      amounts[DateFormat('dd/MM/yyyy').parse(trans['date']).month - 1] +=
          trans['amount'];
    }
    for (int i = 0; i < amounts.length; i++) {
      data.add(month(i + 1, amounts[i]));
    }
    int maxSpendingIndex =
        amounts.indexWhere((item) => item == amounts.reduce(max));
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Container(
            padding: EdgeInsets.all(15),
            height: 400,
            child: charts.BarChart(
              [
                charts.Series<month, String>(
                    id: 'Spending',
                    domainFn: (month m, _) => m.name.toString(),
                    measureFn: (month m, _) => m.amount,
                    colorFn: (month m, index) =>
                        charts.MaterialPalette.green.shadeDefault.lighter,
                    data: data),
              ],
            )),
        Text(
          "You spent the most on ${monthNames[maxSpendingIndex]}",
          style: TextStyle(fontSize: 24),
        ),
        SizedBox(
          height: 50,
        )
      ]),
    );
  }
}

class month {
  int name;
  double amount;

  month(this.name, this.amount);
}
