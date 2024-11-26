import 'package:flutter/material.dart';
import 'package:nft/features/home/screens/home.dart';
import 'package:nft/features/on_boarding/screens/on_boarding_screen.dart';

class RouterManager {
  static Map<String, WidgetBuilder> routers = {
    "on_boarding": (context)=>const OnBoardingScreen(),
     "home":(context)=>const Home()

  };

}
