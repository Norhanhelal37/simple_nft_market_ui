import 'package:flutter/material.dart';
import 'package:nft/core/resources/router_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: RouterManager.routers,
      initialRoute:"on_boarding",
      
    );
  }
}
