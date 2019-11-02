import 'package:flutter/material.dart';

class OverviewScreen extends StatelessWidget {
  static const routeName = '/overview';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Overview"),
      ),
      body: Column(
        children: <Widget>[Text("Transaction History:")],
      ),
    );
  }
}
