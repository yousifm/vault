import 'package:flutter/material.dart';
import 'package:vault/widgets/short_term_input.dart';

class ShortTermLoanScreen extends StatelessWidget {
  static const routeName = '/short-term-loan';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Short Term Loan",
            style: Theme.of(context).textTheme.title,
          ),
        ),
        body: ShortTermInput());
  }
}
