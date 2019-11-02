import 'package:flutter/material.dart';

import 'package:vault/widgets/bottom_nav.dart';

class OverviewScreen extends StatelessWidget {
  static const routeName = '/overview';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Overview"),
      ),
      body: Container(),
      bottomNavigationBar: BottomNav(),
    );
  }
}
