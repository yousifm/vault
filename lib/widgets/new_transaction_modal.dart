import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../providers/transactions.dart';

class NewTransactionModal extends StatefulWidget {
  final Transactions transactionsProvider;
  NewTransactionModal(this.transactionsProvider);
  @override
  _NewTransactionModalState createState() => _NewTransactionModalState();
}

class _NewTransactionModalState extends State<NewTransactionModal> {
  String _dropdownvalue = "Grocery";
  TextEditingController amountController = TextEditingController();
  TextEditingController storeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      height: 550,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(labelText: "Amount"),
              controller: amountController,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Store Name"),
              controller: storeController,
            ),
            Container(
              child: DropdownButton(
                value: _dropdownvalue,
                onChanged: (newVal) {
                  setState(() {
                    print(newVal);
                    _dropdownvalue = newVal;
                  });
                },
                items: [
                  "Grocery",
                  "Health & Beauty",
                  "Clothing",
                  "Dining",
                  "Transport",
                  "Other"
                ]
                    .map((i) =>
                        DropdownMenuItem<String>(value: i, child: Text(i)))
                    .toList(),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            FlatButton(
              child: Text("Add Transaction"),
              onPressed: () {
                widget.transactionsProvider.addTransaction(
                    amount: double.parse(amountController.text),
                    store_name: storeController.text,
                    category: _dropdownvalue,
                    date: DateTime.now());
                amountController.clear();
                storeController.clear();
              },
              color: Theme.of(context).primaryColor,
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
