import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vault/screens/home_screen.dart';

import './providers/transactions.dart';
import './screens/analysis_screen.dart';
import './screens/expenditure_screen.dart';
import './screens/octopus_screen.dart';
import './screens/overview_screen.dart';

void main() => runApp(Vault());

class Vault extends StatelessWidget {
  const Vault({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Vault",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ChangeNotifierProvider<Transactions>(
          builder: (_) => Transactions(), child: HomeScreen()),
      routes: {
        OverviewScreen.routeName: (ctx) => OverviewScreen(),
        ExpenditureScreen.routeName: (ctx) => ExpenditureScreen(),
        OctopusScreen.routeName: (ctx) => OctopusScreen(),
        AnalysisScreen.routeName: (ctx) => AnalysisScreen(),
      },
    );
  }
}
