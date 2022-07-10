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
      home: PeriodHealthScreen()
    );
  }
}


