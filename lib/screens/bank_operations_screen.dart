import 'package:flutter/material.dart';

import '../widgets/analysis_card.dart';

class BankOperationsScreen extends StatelessWidget {
  static const routeName = '/bank-operations';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Bank",
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
                      leading: Text("F P S",
                          style: TextStyle(
                              fontStyle: FontStyle.italic, fontSize: 50)),
                      text: "Faster Payment System",
                      isSelected: false,
                      onPressed: () {}),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      AnalysisCardItem(
                        height: MediaQuery.of(context).size.height * 0.175,
                        width: MediaQuery.of(context).size.width * 0.425,
                        leading: Icon(Icons.event_note, size: 50),
                        text: "Transaction Summary",
                        isSelected: false,
                        onPressed: () {},
                      ),
                      AnalysisCardItem(
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.425,
                          leading: Icon(Icons.note, size: 50),
                          text: "Bills",
                          isSelected: false)
                    ],
                  )
                ],
              ),
              AnalysisCardItem(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.925,
                leading: Icon(
                  Icons.credit_card,
                  size: 50,
                ),
                text: "Credit Card Payment",
                isSelected: false,
                onPressed: () {},
              )
            ])));
  }
}
