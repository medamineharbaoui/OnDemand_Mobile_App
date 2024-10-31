import 'package:flutter/material.dart';
import 'components/body.dart';
import 'package:homejek_app/components/coustom_bottom_nav_bar.dart';
import '../../../../enums.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}