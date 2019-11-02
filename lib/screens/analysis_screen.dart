import 'package:flutter/material.dart';

class AnalysisScreen extends StatelessWidget {
  static const routeName = '/analysis';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Analysis",
          style: Theme.of(context).textTheme.title,
        ),
      ),
      body: Container(),
    );
  }
}
