import 'package:ease_app/components/custom_bot_bar.dart';
import 'package:flutter/material.dart';
import 'components/body.dart';

class WorkOutScreen extends StatelessWidget {
  const WorkOutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBotBar(size: size),
    );
  }
}
