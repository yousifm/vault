import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 5,
      backgroundColor: Colors.red,
      items: [
        BottomNavigationBarItem(
            title: Text("Overview"),
            icon: Image.asset('assets/icons/overview_icon.png')),
        BottomNavigationBarItem(
            title: Text("Expenditure"),
            icon: Image.asset('assets/icons/expenditure_icon.png')),
        BottomNavigationBarItem(
            title: Text(
              "Octopus",
            ),
            icon: Image.asset('assets/icons/octopus_icon.png')),
        BottomNavigationBarItem(
            title: Text("Analysis"),
            icon: Image.asset('assets/icons/analysis_icon.png')),
      ],
    );
  }
}
