import 'package:flutter/material.dart';
import 'package:vault/widgets/categorical_chart.dart';
import 'package:vault/widgets/monthly_chart.dart';

enum ChartType { CATEGORICAL, MONTHLY }

class ChartScreen extends StatelessWidget {
  static const routeName = '/cat_chart';

  @override
  Widget build(BuildContext context) {
    ChartType arg = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        appBar: AppBar(
          title: Text(arg == ChartType.CATEGORICAL
              ? "Categorical Chart"
              : "MonthlyChart"),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body:
            arg == ChartType.CATEGORICAL ? CategoricalChart() : MonthlyChart());
  }
}
