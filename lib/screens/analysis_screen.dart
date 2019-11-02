import 'package:flutter/material.dart';
import 'package:vault/widgets/analysis_card.dart';
import 'package:vault/widgets/categorical_chart.dart';
import './chart_screen.dart';

class AnalysisScreen extends StatelessWidget {
  static const routeName = '/analysis';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Analysis",
          style: Theme.of(context).textTheme.title,
        ),
      ),
      body: Container(
          padding: EdgeInsets.all(15),
          child: Column(children: [
            Row(
              children: <Widget>[
                AnalysisCardItem(
                    height: MediaQuery.of(context).size.height * 0.375,
                    width: MediaQuery.of(context).size.width * 0.5,
                    icon: Icons.pie_chart_outlined,
                    iconSize: 50,
                    text: "Categorical Graph",
                    isSelected: false,
                    onPressed: () {
                      Navigator.of(context).pushNamed(ChartScreen.routeName,
                          arguments: ChartType.CATEGORICAL);
                    }),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    AnalysisCardItem(
                      height: MediaQuery.of(context).size.height * 0.175,
                      width: MediaQuery.of(context).size.width * 0.425,
                      icon: Icons.insert_chart,
                      text: "Monthly Expenditure",
                      iconSize: 50,
                      isSelected: false,
                      onPressed: () {
                        Navigator.of(context).pushNamed(ChartScreen.routeName,
                            arguments: ChartType.MONTHLY);
                      },
                    ),
                    AnalysisCardItem(
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width * 0.425,
                        icon: Icons.report,
                        text: "Alerts",
                        iconSize: 50,
                        isSelected: false)
                  ],
                )
              ],
            ),
          ])),
    );
  }
}
