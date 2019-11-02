import 'package:flutter/material.dart';

class OctopusButton extends StatelessWidget {
  final String text;
  final Function onPress;

  OctopusButton({this.text, this.onPress});

  @override
  Widget build(context) {
    return Container(
      width: double.infinity,
      height: 75,
      child: OutlineButton(
        highlightColor: Theme.of(context).primaryColorLight,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Text(
          text,
          style: TextStyle(fontSize: 25),
        ),
        onPressed: () {},
      ),
    );
  }
}

class OctopusScreen extends StatelessWidget {
  static const routeName = '/octopus';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Octopus"),
      ),
      body: Center(
        child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                OctopusButton(
                  text: "Add Octopus card",
                  onPress: () {},
                ),
                SizedBox(
                  height: 25,
                ),
                OctopusButton(
                  text: "Top-up",
                  onPress: () {},
                ),
                SizedBox(
                  height: 25,
                ),
                OctopusButton(
                  text: "Set up auto top-up",
                  onPress: () {},
                ),
                SizedBox(
                  height: 25,
                ),
                OctopusButton(
                  text: "Expenditure estimates",
                  onPress: () {},
                ),
              ],
            )),
      ),
    );
  }
}
