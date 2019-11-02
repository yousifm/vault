import 'package:flutter/material.dart';
import 'package:vault/screens/analysis_screen.dart';
import 'package:vault/screens/expenditure_screen.dart';
import 'package:vault/screens/octopus_screen.dart';
import 'package:vault/screens/overview_screen.dart';

import '../widgets/main_drawer.dart';

import '../widgets/bottom_nav.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> widgets = [
    OverviewScreen(),
    ExpenditureScreen(),
    OctopusScreen(),
    AnalysisScreen()
  ];

  int _currentIndex = 0;

  void onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      body: IndexedStack(
        index: _currentIndex,
        children: widgets,
      ),
      bottomNavigationBar: BottomNav(onTap),
    );
  }
}
