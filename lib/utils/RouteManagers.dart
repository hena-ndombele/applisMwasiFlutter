import 'package:flutter/material.dart';
import 'package:mwasi_app/pages/demarrage/HomePage.dart';
import 'package:mwasi_app/utils/Routes.dart';

import '../pages/authentification/AuthentificationPage.dart';
import '../pages/creationcompte/CreationComptePage.dart';
import '../pages/demarrage/BottomNavBarPage.dart';
import '../pages/demarrage/SplashPage.dart';
import '../pages/motdepasseoublie/MotDePasseOublie.dart';


class RoutesManager{

  static Route route(RouteSettings r) {

    switch (r.name){

      case Routes.SplashPage:
        return MaterialPageRoute(builder: (_)=>SplashPage());
      case Routes.AuthentificationPage:
        return MaterialPageRoute(builder: (_)=>AuthentificationPage());
      case Routes.CreationComptePage:
        return MaterialPageRoute(builder: (_)=>CreationComptePage());
      case Routes.CreationComptePage:
        return MaterialPageRoute(builder: (_)=>CreationComptePage());
      case Routes.MotDePasseOubliePage:
        return MaterialPageRoute(builder: (_)=>MotDePasseOubliePage());
      case Routes.HomePage:
        return MaterialPageRoute(builder: (_)=>HomePage());
      case Routes.BottomNavBarPage:
        return MaterialPageRoute(builder: (_)=>BottomNavBarPage());


      default:
        return MaterialPageRoute(builder: (_)=>SplashPage());
    }

  }




}