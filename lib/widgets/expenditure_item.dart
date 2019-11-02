import 'package:flutter/material.dart';

class ExpenditureItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final double amount;

  ExpenditureItem({this.icon, this.text, this.amount});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 100,
      child: Card(
          elevation: 5,
          child: Row(
            children: <Widget>[
              SizedBox(width: 35),
              Icon(
                icon,
                size: 50,
                color: Theme.of(context).primaryColor,
              ),
              SizedBox(
                width: 35,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    text,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "HKD $amount",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300),
                  )
                ],
              )
            ],
          )),
    );
  }
}
