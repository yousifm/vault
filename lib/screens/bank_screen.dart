import 'package:flutter/material.dart';
import 'package:vault/widgets/bank_input_form.dart';
import 'package:vault/widgets/main_drawer.dart';

class BankScreen extends StatelessWidget {
  static const routeName = '/bank';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MainDrawer(),
        appBar: AppBar(
          title: Text(
            "Bank",
            style: Theme.of(context).textTheme.title,
          ),
        ),
        body: BankInputForm());
  }
}
