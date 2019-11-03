import 'package:flutter/material.dart';

class AnalysisCardItem extends StatelessWidget {
  Widget leading;
  String text;
  double height;
  double width;
  bool isSelected;
  Function onPressed;

  AnalysisCardItem(
      {this.leading,
      this.text,
      this.height,
      this.width,
      this.isSelected,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onPressed,
      child: Container(
          height: height,
          width: width,
          child: Card(
            elevation: 10,
            color: isSelected ? Theme.of(context).primaryColor : Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: FittedBox(
                child: Column(
                  children: <Widget>[
                    leading,
                    SizedBox(
                      height: 5,
                    ),
                    Text(text,
                        style: TextStyle(
                          fontSize: 20,
                        ))
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
