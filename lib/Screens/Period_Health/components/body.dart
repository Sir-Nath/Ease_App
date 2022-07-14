import 'package:ease_app/Screens/Period_Health/components/period_health_card.dart';
import 'package:ease_app/Screens/Period_Health/components/period_health_header.dart';
import 'package:ease_app/Screens/Work_Out/work_out_screen.dart';
import 'package:ease_app/Screens/Yoga/yoga_stretch_screen.dart';
import 'package:ease_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'browse_button.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            PeriodHealthHeader(size: size),
            PeriodHealthCard(
              'assets/icons/workoutsessions.svg',
              text1: 'Work-Out Sessions',
              text2: 'Based on the intensity of your pains',
              col: Colors.pink.shade50,
              isImage: false,
              press: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return WorkOutScreen();
                }));
              },
            ),
            PeriodHealthCard(
              'assets/icons/stretches.svg',
              text1: 'Stretches',
              text2: 'The right stretches you should try out!',
              col: Colors.white,
                isImage: false,
              press: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return YogaStretchScreen();
                }));
              },
            ),
            PeriodHealthCard(
                'assets/images/blogposts.png',
              text1: 'Blog Post',
              text2: 'Join ladies around the world.learn from \nthese medically certified blogs',
              col: Colors.pink.shade50,
                isImage: true,
              press: (){},
            ),
            PeriodHealthCard(
              'assets/images/populardiagnosis.png',
              text1: 'Popular Diagnosis',
              text2: "Do you experience weird feeling. you \nmightn't be the only one facing that",
              col: Colors.white,
              isImage: true,
              press: (){},
            ),
            //BrowseButton()
          ],
        ),
      ),
    );
  }
}






