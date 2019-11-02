import 'package:flutter/material.dart';
import 'package:vault/widgets/expenditure_item.dart';
import 'package:provider/provider.dart';
import '../providers/transactions.dart';

class ExpenditureScreen extends StatelessWidget {
  static const routeName = '/expenditure';

  double amountWhereMedium(dynamic transactions, String medium) {
    return transactions.transactions
        .where((item) => item['medium'] == medium)
        .fold(0.0, (sum, val) => sum + val['amount']);
  }

  @override
  Widget build(BuildContext context) {
    final transactions = Provider.of<Transactions>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Expenditure",
          style: Theme.of(context).textTheme.title,
        ),
      ),
      body: Center(
          child: Container(
              child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ExpenditureItem(
              icon: Icons.attach_money,
              text: "Cash",
              amount: amountWhereMedium(transactions, "Cash")),
          ExpenditureItem(
            icon: Icons.credit_card,
            text: "Card",
            amount: amountWhereMedium(transactions, "Credit Card"),
          ),
          ExpenditureItem(
            icon: Icons.calendar_view_day,
            text: "Octopus",
            amount: amountWhereMedium(transactions, "Octopus"),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Total: ",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              Text(
                "HKD ${transactions.transactions.fold(0.0, (sum, val) => sum + val['amount']).toStringAsFixed(2)}",
                style: TextStyle(fontSize: 30),
              )
            ],
          )
        ],
      ))),
    );
  }
}
