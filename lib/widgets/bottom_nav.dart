import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  final Function onTap;

  BottomNav(this.onTap);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int index = 0;

  onTap(int index) {
    setState(() {
      this.index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context)
            .copyWith(canvasColor: Theme.of(context).primaryColorDark),
        child: BottomNavigationBar(
          elevation: 5,
          type: BottomNavigationBarType.fixed,
          iconSize: 30,
          selectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(color: Colors.white),
          unselectedFontSize: 16,
          selectedFontSize: 16,
          onTap: (int index) {
            widget.onTap(index);
            onTap(index);
          },
          currentIndex: index,
          items: [
            BottomNavigationBarItem(
                title: Text("Overview"), icon: Icon(Icons.dashboard)),
            BottomNavigationBarItem(
                title: Text("Expenditure"), icon: Icon(Icons.attach_money)),
            BottomNavigationBarItem(
                title: Text(
                  "Octopus",
                ),
                icon: Icon(Icons.credit_card)),
            BottomNavigationBarItem(
                title: Text("Analysis"), icon: Icon(Icons.insert_chart))
          ],
        ));
  }
}
