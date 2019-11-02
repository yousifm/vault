import 'package:flutter/material.dart';

class AnalysisCardItem extends StatelessWidget {
  IconData icon;
  String text;
  double height;
  double width;
  double iconSize;
  bool isSelected;

  AnalysisCardItem(
      {this.icon,
      this.text,
      this.height,
      this.width,
      this.iconSize,
      this.isSelected});

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
                    color: isSelected
                        ? Colors.white
                        : Theme.of(context).primaryColor,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    text,
                    style: TextStyle(
                        fontSize: 20,
                        color: isSelected
                            ? Colors.white
                            : Theme.of(context).primaryColorDark),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
