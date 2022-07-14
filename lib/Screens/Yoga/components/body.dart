import 'package:ease_app/Screens/Yoga/components/yoga_stretch_card.dart';
import 'package:ease_app/components/custom_app_bar.dart';
import 'package:flutter/material.dart';
import '../../../components/date_column.dart';

import '../../Period_Health/period_health_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
                text: 'Yoga Stretches',
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return PeriodHealthScreen();
                  }));
                }),
            Row(
              children: [
                DateColumn(
                  day: 'S',
                  date: '02',
                  isOn: false,
                ),
                DateColumn(day: 'M', date: '03', isOn: true),
                DateColumn(day: 'T', date: '04', isOn: false),
                DateColumn(day: 'W', date: '05', isOn: false),
                DateColumn(day: 'T', date: '06', isOn: false),
                DateColumn(day: 'F', date: '07', isOn: false),
                DateColumn(day: 'S', date: '08', isOn: false),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            YogaStretchCard(
                text1: "Adapted Child's Pose",
                text2: '8 mins',
                svgSrc: 'assets/icons/childpose - Copy.svg'),
            SizedBox( height: 10,),
            YogaStretchCard(
                text1: "Cat-Cow",
                text2: '10 mins',
                svgSrc: 'assets/icons/catcow - Copy.svg'),
            SizedBox( height: 10,),
            YogaStretchCard(
                text1: "Body Fold",
                text2: '15 mins',
                svgSrc: 'assets/icons/bodyfold - Copy.svg'),
            SizedBox( height: 10,),
            YogaStretchCard(
                text1: "Pigeon Pose",
                text2: '12 mins',
                svgSrc: 'assets/icons/pigeonpose - Copy.svg'),
            SizedBox( height: 10,),
            YogaStretchCard(
                text1: "Bound Angle Pose",
                text2: '12 mins',
                svgSrc: 'assets/icons/boundedangle - Copy.svg'),
            SizedBox( height: 10,),
            YogaStretchCard(
                text1: "Wide Angle Forward Bend",
                text2: '20 mins',
                svgSrc: 'assets/icons/wideangle - Copy.svg'),
          ],
        ),
      ),
    ));
  }
}
