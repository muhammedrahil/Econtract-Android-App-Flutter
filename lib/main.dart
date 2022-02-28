import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:econtractor/ScreenPage/Home.dart';
import 'package:econtractor/ScreenPage/ViewContractor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'ScreenPage/AddFeadBack.dart';
import 'ScreenPage/ViewFeedBack.dart';
import 'ipset.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MALABAR',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      //spalshScreen Part
      home:AnimatedSplashScreen(splash: Icon(Icons.home,color: Colors.white,size: 100,),
      splashIconSize: 200,
      duration: 3000,
       splashTransition: SplashTransition.rotationTransition,
       backgroundColor: Colors.blue,
      nextScreen: Home()),
    );
  }
}

