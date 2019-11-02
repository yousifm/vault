import 'package:flutter/material.dart';
import 'package:vault/providers/transactions.dart';

class TransactionItem extends StatelessWidget {
  Transaction transaction;

  TransactionItem(this.transaction);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Card(
        clipBehavior: Clip.hardEdge,
        elevation: 2,
        child: Row(children: <Widget>[
          Container(
            width: 75,
            height: double.infinity,
            color: Theme.of(context).primaryColor,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: FittedBox(
                child: Text(
              transaction.amount.toString(),
              style: TextStyle(color: Colors.white),
            )),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            transaction.description,
            style: TextStyle(
                fontSize: 22, color: Theme.of(context).primaryColorDark),
          ),
        ]),
      ),
    );
  }
}
