import 'package:flutter/material.dart';

class AnalysisCardItem extends StatelessWidget {
  IconData icon;
  String text;
  double height;
  double width;
  double iconSize;

  AnalysisCardItem(
      {this.icon, this.text, this.height, this.width, this.iconSize});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: FittedBox(
              child: Column(
                children: <Widget>[
                  Icon(
                    icon,
                    size: iconSize,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    text,
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
