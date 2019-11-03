import 'package:flutter/material.dart';
import 'package:vault/screens/short_loan_screen.dart';

class LoanScreen extends StatelessWidget {
  static const routeName = '/loan';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Loan Advisor",
            style: Theme.of(context).textTheme.title,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 75,
                width: double.infinity,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: Theme.of(context).primaryColor,
                  child: Text(
                    "Student Loan",
                    style: TextStyle(fontSize: 26, color: Colors.white),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                height: 75,
                width: double.infinity,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: Theme.of(context).primaryColor,
                  child: Text(
                    "Payment Plan",
                    style: TextStyle(fontSize: 26, color: Colors.white),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                height: 75,
                width: double.infinity,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: Theme.of(context).primaryColor,
                  child: Text(
                    "Short-term Loan",
                    style: TextStyle(fontSize: 26, color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(ShortTermLoanScreen.routeName);
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
