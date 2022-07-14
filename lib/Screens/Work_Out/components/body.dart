import 'package:ease_app/Screens/Period_Health/period_health_screen.dart';
import 'package:ease_app/Screens/Work_Out/components/work_out_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/custom_app_bar.dart';
import '../../../components/date_column.dart';
import '../../../components/profile_pics.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              CustomAppBar(
                text: 'Work-Out Sessions',
                press: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return PeriodHealthScreen();
                  }));
                },),
              Row(
                children: [
                  DateColumn(day: 'S', date: '02', isOn: false,),
                  DateColumn(day: 'M', date: '03', isOn: true),
                  DateColumn(day: 'T', date: '04' , isOn: false),
                  DateColumn(day: 'W', date: '05', isOn: false),
                  DateColumn(day: 'T', date: '06', isOn: false),
                  DateColumn(day: 'F', date: '07', isOn: false),
                  DateColumn(day: 'S', date: '08', isOn: false),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              WorkOutCard(
                  text1: 'Low-Volume \nstrength training',
                  text2: '8 mins',
                  svgSrc: 'assets/icons/workoutsessions.svg'),
              SizedBox( height: 10,),
              WorkOutCard(
                  text1: 'Light cardio',
                  text2: '10 mins',
                  svgSrc: 'assets/icons/lightcardio.svg'),
              SizedBox( height: 10,),
              WorkOutCard(
                  text1: 'Wide-arm twister',
                  text2: '15 mins',
                  svgSrc: 'assets/icons/widearmtwister.svg'),
              SizedBox( height: 10,),
              WorkOutCard(
                  text1: 'Mid-volume strength \n training',
                  text2: '12 mins',
                  svgSrc: 'assets/icons/midvolume.svg'),
              SizedBox( height: 10,),
              WorkOutCard(
                  text1: 'Full-Body turning',
                  text2: '12 mins',
                  svgSrc: 'assets/icons/fullbody.svg'),
              SizedBox( height: 10,),

            ],
          ),
        ),
      ),
    );
  }
}






