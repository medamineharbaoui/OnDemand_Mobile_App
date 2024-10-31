import 'package:flutter/material.dart';
import 'package:homejek_app/components/socal_card.dart';
import 'package:homejek_app/constants.dart';
import 'package:homejek_app/size_config.dart';

import 'sign_up_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.02), // 4%
                Text("Créez un Compte", style: headingStyle),
                Text(
                  "Veuillez compléter vos informations continue ou \ncontinuez avec les médias sociaux",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                SignUpForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.025),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocalCard(
                      icon: "assets1/icons/google-icon.svg",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets1/icons/facebook-2.svg",
                      press: () {},
                    ),

                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                Text(
                  'En continuant, vous confirmez votre accord \navec nos conditions.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
