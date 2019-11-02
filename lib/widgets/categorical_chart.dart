import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:provider/provider.dart';

import '../providers/transactions.dart';

class cat {
  String name;
  double amount;

  cat(this.name, this.amount);
}

class CategoricalChart extends StatelessWidget {
  Map<String, double> amounts = {
    "Others": 0,
    "Grocery": 0,
    "Health & Beauty": 0,
    "Clothing": 0,
    "Dining": 0,
    "Transport": 0
  };
  List<cat> data = [];

  @override
  Widget build(BuildContext context) {
    final transactions = Provider.of<Transactions>(context, listen: false);
    final shades = charts.MaterialPalette.green.makeShades(amounts.length);

    for (var t in transactions.transactions) {
      amounts[t['category']] += t['amount'];
    }

    for (int i = 0; i < amounts.length; i++) {
      data.add(cat(amounts.keys.toList()[i], amounts.values.toList()[i]));
    }
    data.sort((item1, item2) => item2.amount.compareTo(item1.amount));

    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Container(
          alignment: Alignment.centerLeft,
          width: double.infinity,
          height: 400,
          padding: EdgeInsets.symmetric(vertical: 25),
          child: charts.PieChart(
            [
              charts.Series<cat, String>(
                  id: 'Spending',
                  domainFn: (cat category, _) => category.name,
                  measureFn: (cat category, _) => category.amount,
                  colorFn: (cat category, i) => shades[i],
                  data: data)
            ],
            animate: false,
            defaultRenderer:
                charts.ArcRendererConfig(arcWidth: 500, arcRendererDecorators: [
              charts.ArcLabelDecorator(
                  labelPosition: charts.ArcLabelPosition.auto,
                  outsideLabelStyleSpec: charts.TextStyleSpec(
                      fontSize: 20,
                      color: charts.MaterialPalette.green.shadeDefault),
                  insideLabelStyleSpec: charts.TextStyleSpec(
                      fontSize: 18, color: charts.Color.white)),
            ]),
          ),
        ),
        Text(
          "You spent the most on: ${data[0].name}",
          style: TextStyle(fontSize: 24),
        ),
        SizedBox(
          height: 50,
        )
      ]),
    );
  }
}
