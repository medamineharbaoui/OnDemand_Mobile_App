
import 'package:flutter/material.dart';

import 'package:homejek_app/theme.dart';
import 'package:homejek_app/pages/first.dart';
import 'package:homejek_app/pages/payment/thanku_page.dart';
import 'package:homejek_app/pages/sign_up/sign_up_screen.dart';
import 'package:homejek_app/pages/third.dart';
import 'package:homejek_app/pages/home/home_screen.dart';
import 'package:homejek_app/pages/otp/otp_screen.dart';
import 'package:homejek_app/pages/notification/notification_screen.dart';
import 'package:homejek_app/pages/notification/components/incoming_ride.dart';
import 'package:homejek_app/pages/booking/booking_screen.dart';
import 'package:homejek_app/pages/payment/payment_screen.dart';


import 'package:homejek_app/pages/map/map_screen.dart';


void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Homejek App',
            theme: theme(),

  home:IncomingRide(),
   routes : {
    '/first':(context)=>First(),
    '/third':(context)=>Third(),
    '/home': (context)=> HomeScreen(),


  }


));


/*
import 'package:flutter/material.dart';
import 'package:homejek_app/routes.dart';
import 'package:homejek_app/pages/splash/splash_screen.dart';
import 'package:homejek_app/theme.dart';
import 'package:http/http.dart' as http;

void main() {
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
    // This widget is the root of your application.
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Homejek App',
            theme: theme(),
            home: SplashScreen(),
            // We use routeName so that we dont need to remember the name
            initialRoute: SplashScreen.routeName,
            routes: routes,
        );
    }
}

*/

