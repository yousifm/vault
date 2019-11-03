import 'package:flutter/material.dart';
import 'package:vault/screens/bank_operations_screen.dart';

class BankInputForm extends StatefulWidget {
  BankInputForm({Key key}) : super(key: key);

  @override
  _BankInputFormState createState() => _BankInputFormState();
}

class _BankInputFormState extends State<BankInputForm> {
  String _selected;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Choose your service provider:",
                  style: TextStyle(fontSize: 26),
                ),
                SizedBox(
                  height: 25,
                ),
                DropdownButton(
                  style: TextStyle(fontSize: 26, color: Colors.black),
                  value: _selected,
                  isExpanded: true,
                  items: ["HSBC", "Hang Seng", "BEA", "Bank Of China"]
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      _selected = value;
                    });
                  },
                ),
              ],
            ),
            FlatButton(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Text("Proceed",
                  style: TextStyle(fontSize: 32, color: Colors.white)),
              color: Theme.of(context).primaryColor,
              onPressed: () {
                Navigator.of(context).pushNamed(BankOperationsScreen.routeName);
              },
            )
          ],
        ));
  }
}
