import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/screens/bottom_nav.dart';
import 'package:food_delivery/screens/details.dart';
import 'package:food_delivery/screens/login_screen.dart';
import 'package:food_delivery/screens/onboard.dart';
import 'package:food_delivery/screens/sign_up.dart';

class AppRoutes{
  static const String details="details";
  static const String bottom="bottomNav";
  static const String login="login";
  static const String onBoard="/";
  static const String signUp="signUp";

}

class Routes{
  static onGenerate(RouteSettings settings)

  {

    switch(settings.name){
      case AppRoutes.details :
        return MaterialPageRoute(builder:
        (context) => Details(),);

      case AppRoutes.onBoard :
        return MaterialPageRoute(builder:
            (context) => OnBoard(),);

      case AppRoutes.signUp :
        return MaterialPageRoute(builder:
            (context) => SignUpScreen(),);

      case AppRoutes.login:
        return MaterialPageRoute(builder:
        (context) => LoginScreen(

        ),);

      case AppRoutes.bottom :
        return MaterialPageRoute(builder:
            (context) => BottomNav(),);
    }





  }
}