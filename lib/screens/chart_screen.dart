import 'package:flutter/material.dart';
import 'package:vault/widgets/categorical_chart.dart';

class ChartScreen extends StatelessWidget {
  static const routeName = '/cat_chart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Categorical Chart"),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: CategoricalChart());
  }
}
