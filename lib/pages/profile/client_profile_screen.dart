import 'package:flutter/material.dart';
//import 'package:homejek_app/components/coustom_bottom_nav_bar.dart';
//import 'package:homejek_app/enums.dart';

import 'components/body.dart';

class Client_ProfileScreen extends StatelessWidget {
  static String routeName = "/Client_ProfileScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil"),
      ),
      body: Body(),
      //bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
