//import 'dart:js';
import 'package:homejek_app/pages/login_success/login_success_screen.dart';
import 'package:flutter/material.dart';
import 'package:homejek_app/components/custom_surfix_icon.dart';
import 'package:homejek_app/components/default_button.dart';
import '../../../../size_config.dart';

class PaymentForm extends StatefulWidget {
  @override
  _PaymentFormState createState() => _PaymentFormState();
}


class _PaymentFormState extends State<PaymentForm> {
  final _formKey = GlobalKey<FormState>();
  String? name;
  String ? number;
  String? cvv;
  String? date;



  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenHeight(100)),
          buildNameFormField(),
          SizedBox(height: getProportionateScreenHeight(100)),
          buildCardFormField(),
          SizedBox(height: getProportionateScreenHeight(100)),
          buildCvvFormField(),
          SizedBox(height: getProportionateScreenHeight(100)),
          buildDateFormField(),
          SizedBox(height: getProportionateScreenHeight(100)),


        ],
      ),
    );
  }


  TextFormField buildDateFormField() {
    return TextFormField(
      obscureText: true,
      keyboardType: TextInputType.datetime,
      onChanged: (value) {},

      decoration: InputDecoration(
        labelText: "Date d'expiration",
        hintText: "Entrez la date d'expiration",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets1/icons/calendar.svg"),
      ),
    );
  }

  TextFormField buildCvvFormField() {
    return TextFormField(
      obscureText: true,
      keyboardType: TextInputType.number,
      onSaved: (newValue) => cvv = newValue,
      onChanged: (value) {},

      decoration: InputDecoration(
        labelText: "CVV",
        hintText: "Entrez votre CVV",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets1/icons/cvv2.svg"),
      ),
    );
  }

  TextFormField buildNameFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => name = newValue,
      onChanged: (value) {},

      decoration: InputDecoration(
        labelText: "Nom de la carte",
        hintText: "Entrez le nom de la carte",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets1/icons/profile_card.svg"),
      ),
    );
  }




  TextFormField buildCardFormField() {
    return TextFormField(
      obscureText: true,
      keyboardType: TextInputType.number,
      onSaved: (newValue) => number = newValue,
      onChanged: (value) {
              },
      decoration: InputDecoration(
        labelText: "Num Carte",
        hintText: "Entrez le numéro de la carte",

        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets1/icons/payment_card.svg"),
      ),
    );
  }



}
