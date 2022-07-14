import 'package:ease_app/components/custom_bot_bar.dart';
import 'package:flutter/material.dart';
import 'components/body.dart';


class YogaStretchScreen extends StatelessWidget {
  const YogaStretchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: CustomBotBar(size: size),
        body: Body(),
      );
  }
}
