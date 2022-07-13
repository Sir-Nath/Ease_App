import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BotBarItems extends StatelessWidget {
  final String text;
  final String svgSrc;
  const BotBarItems({
    Key? key, required this.text, required this.svgSrc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(svgSrc),
          Text(
            text,
            style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w600,
                fontFamily: 'OpenSans'),
          )
        ],
      ),
    );
  }
}