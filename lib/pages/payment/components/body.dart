import 'package:flutter/material.dart';
import 'package:homejek_app/components/socal_card.dart';
import 'package:homejek_app/constants.dart';
import 'package:homejek_app/size_config.dart';
import 'package:homejek_app/components/default_button.dart';

import 'payment_form.dart';

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
                SizedBox(height: SizeConfig.screenHeight * 0.001), // 4%
                Text("Payer vos services", style: headingStyle),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "Veuillez compléter les informations de votre \ncarte afin d'effectuer le paiement en ligne",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.1),
                Image.asset("assets1/images/credit_payment_card.png" ,
                  height: getProportionateScreenHeight(1250),
                  width: getProportionateScreenWidth(1500),
                ),
                PaymentForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.025),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DefaultButton(
                      text: "Payez",
                      press: () {},
                    ),
                    SizedBox(height: SizeConfig.screenHeight * 0.025,
                    width: SizeConfig.screenWidth*0.15,),
                    DefaultButton(
                      text: "Annulez",
                      press: () {},
                    ),



                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),

                SizedBox(height: getProportionateScreenHeight(20)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
