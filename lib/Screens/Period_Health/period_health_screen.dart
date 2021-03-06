import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../components/bot_bar_items.dart';
import '../../components/custom_bot_bar.dart';
import 'components/body.dart';

class PeriodHealthScreen extends StatelessWidget {
  const PeriodHealthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBotBar(size: size),
    );
  }
}




