import 'package:flutter/material.dart';
import 'package:homejek_app/pages/cart/cart_screen.dart';

import '../../../size_config.dart';
import 'icon_btn_with_counter.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
            svgSrc: "assets1/icons/Cart Icon.svg",
            press: () => Navigator.pushNamed(context, '/cart'),
          ),
          IconBtnWithCounter(
            svgSrc: "assets1/icons/Bell.svg",
            numOfitem: 1,
            press: () {},
          ),
        ],
      ),
    );
  }
}
