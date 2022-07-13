import 'package:flutter/material.dart';

import 'bot_bar_items.dart';

class CustomBotBar extends StatelessWidget {
  const CustomBotBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.08,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BotBarItems(
            text: 'Home',
            svgSrc: 'assets/icons/home-2.svg',
          ),
          BotBarItems(
            text: 'Health',
            svgSrc: 'assets/icons/weight.svg',
          ),
          BotBarItems(
            text: 'Chat',
            svgSrc: 'assets/icons/message-2.svg',
          ),
          BotBarItems(
            text: 'Profile',
            svgSrc: 'assets/icons/profile.svg',
          ),

        ],
      ),
    );
  }
}