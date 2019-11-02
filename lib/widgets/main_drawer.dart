import 'package:flutter/material.dart';
import '../screens/bank_screen.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10,
      child: Container(
          width: double.infinity,
          color: Theme.of(context).primaryColor,
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 15,
                  ),
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      child: Icon(
                        Icons.person,
                        size: 50,
                      )),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "@username",
                    style: TextStyle(fontSize: 28),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Divider(
                color: Colors.black,
              ),
              FlatButton(
                child: Container(
                    alignment: Alignment.centerLeft,
                    height: 50,
                    width: double.infinity,
                    child: Text(
                      "Wallet",
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    )),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
              ),
              Divider(
                color: Colors.black,
              ),
              FlatButton(
                child: Container(
                  alignment: Alignment.centerLeft,
                  height: 50,
                  width: double.infinity,
                  child: Text(
                    "Bank",
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(BankScreen.routeName);
                },
              ),
              Divider(
                color: Colors.black,
              ),
            ],
          )),
    );
  }
}
