//import 'dart:js';
import 'dart:convert';

import 'package:homejek_app/pages/login_success/login_success_screen.dart';
import 'package:flutter/material.dart';
import 'package:homejek_app/components/custom_surfix_icon.dart';
import 'package:homejek_app/components/default_button.dart';
import 'package:homejek_app/components/form_error.dart';
//import 'package:homejek_app/pages/complete_profile/complete_profile_screen.dart';
import 'package:http/http.dart' as http;
import 'package:homejek_app/services/API.dart';

//import 'package:homejek_app/pages/sign_up/components/dropdown_button.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

// lezem nziid froms mtaa firstname w last name w username
class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

//nconsomi f les api men hnee



class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? first_name;
  String? last_name;
  String? username;
  String ? phone;
  String? password;
  String? confirm_password;
  String? cin ;

  bool?ServiceProvider = false ;
  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }
  Future<http.Response> RegisterClient() async {


    return http.post(
      Uri.parse(API_url.API + '/rest/api/user/registerClient'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        "email" : email.toString(),
        "phone_number" : phone.toString() ,
        "password":password.toString(),
        "first_name":first_name.toString(),
        "last_name":last_name.toString(),
        "username":username.toString()
      }),
    );

  }
  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(15)),
          buildPhoneFormField(),
          SizedBox(height: getProportionateScreenHeight(15)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(15)),
          buildConformPassFormField(),
          FormError(errors: errors),

          Checkbox(
            value: ServiceProvider ,
            activeColor: kPrimaryColor,
            onChanged: (value) {
              setState(() {
                 ServiceProvider= value;
              });
            },
          ),
          Text("S'inscrire en tant que prestatire de service"),
          SizedBox(height: getProportionateScreenHeight(10)),



         // lezem n7othom fi boucle if , mayo5rjou ken ma checkbox yabda manzoul
          buildCinFormField(),
          SizedBox(height: getProportionateScreenHeight(15)),
          buildCategoryField(),
          SizedBox(height: getProportionateScreenHeight(15)),





          DefaultButton(
            text: "Continuer",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                RegisterClient();
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginSuccessScreen()));
              }
            },
          ),
        ],
      ),
    );
  }


  TextFormField buildConformPassFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => confirm_password = newValue,
      onChanged: (value) {
       /* if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.isNotEmpty && password == confirm_password) {
          removeError(error: kMatchPassError);
        }
        confirm_password = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if ((password != value)) {
          addError(error: kMatchPassError);
          return "";
        }
        return null; */
      },
      decoration: InputDecoration(
        labelText: "Confirmez votre mot de passe",
          hintText: "Entrez voter mot de passe",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets1/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
       /* if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        password = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null; */
      },
      decoration: InputDecoration(
        labelText: "Mot de Passe",
        hintText: "Entrez votre mot de passe",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets1/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        /*if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;*/
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Entrez votre adresse email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets1/icons/Mail.svg"),
      ),
    );
  }

  TextFormField buildCinFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => cin = newValue,
      onChanged: (value) {

      },
      decoration: InputDecoration(
        labelText: "CIN",
        hintText: "Entrez le numero d'identité",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets1/icons/Id-Card.svg" ),
      ),
    );
  }

  String? selectedValue;
  List<String> items = [
    'Garde enfants',
    'Ménage',
    'Infirmerie',
    'Garde Malade',
    'Livraison',

  ];
  DropdownButton buildCategoryField(){
    return DropdownButton(
      isExpanded: true,
      hint: Row(
        children: const [
          Icon(
            Icons.list,
            size: 25,

          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              'Choisissez votre catégorie',
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
      items: items
          .map((item) => DropdownMenuItem<String>(
        value: item,
        child: Text(
          item,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black45,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ))
          .toList(),
      value: selectedValue,
      onChanged: (value) {
        setState(() {
          selectedValue = value as String;
        });
      },
      icon: const Icon(
        Icons.arrow_forward_ios_outlined,
      ),
      iconSize: 14,
      iconEnabledColor: Colors.blueAccent,
      iconDisabledColor: Colors.grey,




    );
  }

  TextFormField buildPhoneFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => phone = newValue,
      onChanged: (value) {

      },
      decoration: InputDecoration(
        labelText: "Téléphone",
        hintText: "Entrez le numéro de téléphone",

        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets1/icons/Phone.svg"),
      ),
    );
  }



}
