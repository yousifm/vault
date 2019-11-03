import 'package:flutter/material.dart';
import 'package:vault/screens/loan_screen.dart';
import 'package:vault/widgets/analysis_card.dart';
import 'package:vault/widgets/categorical_chart.dart';
import './chart_screen.dart';
import '../widgets/main_drawer.dart';

class AnalysisScreen extends StatelessWidget {
  static const routeName = '/analysis';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text(
          "Analysis",
          style: Theme.of(context).textTheme.title,
        ),
      ),
      body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(15),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Row(
              children: <Widget>[
                AnalysisCardItem(
                    height: MediaQuery.of(context).size.height * 0.375,
                    width: MediaQuery.of(context).size.width * 0.5,
                    leading: Icon(
                      Icons.pie_chart_outlined,
                      size: 50,
                    ),
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
                      leading: Icon(
                        Icons.insert_chart,
                        size: 50,
                      ),
                      text: "Monthly Expenditure",
                      isSelected: false,
                      onPressed: () {
                        Navigator.of(context).pushNamed(ChartScreen.routeName,
                            arguments: ChartType.MONTHLY);
                      },
                    ),
                    AnalysisCardItem(
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width * 0.425,
                        leading: Icon(
                          Icons.report,
                          size: 50,
                        ),
                        text: "Alerts",
                        isSelected: false)
                  ],
                )
              ],
            ),
            AnalysisCardItem(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 0.925,
              leading: Icon(
                Icons.monetization_on,
                size: 50,
              ),
              text: "Loan Advisor",
              isSelected: false,
              onPressed: () {
                Navigator.of(context).pushNamed(LoanScreen.routeName);
              },
            )
          ])),
    );
  }
}
