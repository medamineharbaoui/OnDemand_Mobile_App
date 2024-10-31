import 'package:flutter/material.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "Mon Compte",
            icon: "assets1/icons/User Icon.svg",
            press: () => {},
          ),
          ProfileMenu(
            text: "Notifications",
            icon: "assets1/icons/Bell.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Pramètres",
            icon: "assets1/icons/Settings.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Centre d'assistance",
            icon: "assets1/icons/Question mark.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Déconnexion",
            icon: "assets1/icons/Log out.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}
