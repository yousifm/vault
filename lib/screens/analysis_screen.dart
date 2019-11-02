import 'package:flutter/material.dart';
import 'package:vault/widgets/analysis_card.dart';

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
          child: Row(
            children: <Widget>[
              AnalysisCardItem(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width * 0.5,
                  icon: Icons.pie_chart_outlined,
                  iconSize: 50,
                  text: "Categorical Graph"),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  AnalysisCardItem(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.425,
                    icon: Icons.insert_chart,
                    text: "Monthly Expenditure",
                    iconSize: 50,
                  ),
                  AnalysisCardItem(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.425,
                    icon: Icons.report,
                    text: "Alerts",
                    iconSize: 50,
                  )
                ],
              )
            ],
          )),
    );
  }
}
