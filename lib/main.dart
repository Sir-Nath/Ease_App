import 'dart:async';

import 'package:ease_app/Screens/Period_Health/period_health_screen.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ease App',
      theme: ThemeData(
          primaryColor: myPrimaryColor,
          scaffoldBackgroundColor: Colors.white
      ),
      home: SplashScreen()
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> PeriodHealthScreen()))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffA8417F),
      body: Center(
        child: Text(
          'ease',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'OpenSans',
            fontSize: 100,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}

