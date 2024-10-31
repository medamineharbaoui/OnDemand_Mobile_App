import 'package:flutter/material.dart';


import '../constants.dart';
import '../size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Vous n'avez pas encore de compte?  ",
          style: TextStyle(fontSize: getProportionateScreenWidth(14)),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, '/sign_up'),
          child: Text(
            "Inscrivez-vous",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(14),
                color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
