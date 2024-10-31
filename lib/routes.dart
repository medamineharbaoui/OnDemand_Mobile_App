import 'package:flutter/widgets.dart';
import 'package:homejek_app/pages/cart/cart_screen.dart';
import 'package:homejek_app/pages/complete_profile/complete_profile_screen.dart';
import 'package:homejek_app/pages/details/details_screen.dart';
import 'package:homejek_app/pages/forgot_password/forgot_password_screen.dart';
import 'package:homejek_app/pages/home/home_screen.dart';
import 'package:homejek_app/pages/login_success/login_success_screen.dart';
import 'package:homejek_app/pages/otp/otp_screen.dart';
import 'package:homejek_app/pages/profile/client_profile_screen.dart';
import 'package:homejek_app/pages/sign_in/sign_in_screen.dart';
import 'package:homejek_app/pages/splash/splash_screen.dart';
import 'package:homejek_app/pages/sign_up/sign_up_screen.dart';
import 'package:homejek_app/pages/booking/booking_screen.dart';
import 'package:homejek_app/pages/map/map_screen.dart';



final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  Client_ProfileScreen.routeName: (context) => Client_ProfileScreen(),
  Booking_Screen.routeName: (context) => Booking_Screen(),
  LocationTracking.routeName: (context)=> LocationTracking() ,

};

