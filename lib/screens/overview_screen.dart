import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/transactions.dart';
import '../widgets/transaction_item.dart';

class OverviewScreen extends StatelessWidget {
  static const routeName = '/overview';

  @override
  Widget build(BuildContext context) {
    final transactions = Provider.of<Transactions>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Overview"),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Transaction History:",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 300,
              padding: EdgeInsets.all(0),
              child: ListView.builder(
                  itemCount: transactions.transactions.length,
                  itemBuilder: (ctx, index) =>
                      TransactionItem(transactions.transactions[index])),
            )
          ],
        ),
      ),
    );
  }
}
