import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homejek_app/pages/home/home_screen.dart';
import 'package:homejek_app/pages/profile/client_profile_screen.dart';
//import 'package:homejek_app/pages/client_profile_screen2.dart';

import '../constants.dart';
import '../enums.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/Shop Icon.svg",
                  color: MenuState.home == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, '/home'),
              ),
              IconButton(
                icon: SvgPicture.asset("assets1/icons/Heart Icon.svg" ,
                  color: MenuState.home == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,),
                onPressed: () {},
              ),
              IconButton(
                icon: SvgPicture.asset("assets1/icons/paper.svg"),
                onPressed: () {},
              ),
              IconButton(
                icon: SvgPicture.asset("assets1/icons/User Icon.svg",),
                onPressed: () {Navigator.pushNamed(context, '/Client_ProfileScreen');}
              ),
            ],
          )),
    );
  }
}
