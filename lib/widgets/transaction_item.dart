import 'package:flutter/material.dart';
import 'package:vault/providers/transactions.dart';

class TransactionItem extends StatelessWidget {
  final dynamic transaction;

  TransactionItem(this.transaction);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 75,
        child: Card(
          clipBehavior: Clip.hardEdge,
          elevation: 2,
          child: ListTile(
            leading: Icon(
              Icons.monetization_on,
              size: 38,
              color: Theme.of(context).primaryColorDark,
            ),
            title: Text(transaction['date'],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            subtitle: Text(transaction['store']),
            trailing: Container(
              width: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'HKD \$' + transaction['amount'].toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Theme.of(context).primaryColor),
                  ),
                  Text(transaction['medium'])
                ],
              ),
            ),
          ),
        ));
  }
}
