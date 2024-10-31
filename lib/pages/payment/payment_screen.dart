import 'package:flutter/material.dart';

import 'components/body.dart';

class PayementScreen extends StatelessWidget {
  static String routeName = "/sign_up";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Paiement"),
      ),
      body: Body(),
    );
  }
}
