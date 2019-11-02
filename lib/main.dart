import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vault/screens/chart_screen.dart';
import 'package:vault/screens/home_screen.dart';

import './providers/transactions.dart';
import './screens/analysis_screen.dart';
import './screens/expenditure_screen.dart';
import './screens/octopus_screen.dart';
import './screens/overview_screen.dart';

void main() => runApp(Vault());

class Vault extends StatelessWidget {
  final trans = Transactions();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Vault",
      theme: ThemeData(
          primarySwatch: Colors.green,
          textTheme:
              TextTheme(title: TextStyle(fontSize: 32, color: Colors.white))),
      home: ChangeNotifierProvider<Transactions>(
          builder: (_) => trans, child: HomeScreen()),
      routes: {
        ChartScreen.routeName: (ctx) =>
            ChangeNotifierProvider<Transactions>.value(
                value: trans, child: ChartScreen()),
        OverviewScreen.routeName: (ctx) => OverviewScreen(),
        ExpenditureScreen.routeName: (ctx) => ExpenditureScreen(),
        OctopusScreen.routeName: (ctx) => OctopusScreen(),
        AnalysisScreen.routeName: (ctx) => AnalysisScreen(),
      },
    );
  }
}
