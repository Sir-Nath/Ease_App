import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'browse_button.dart';


class PeriodHealthCard extends StatelessWidget {
  final String text1;
  final String text2;
  final String svgSrc;
  final Color col;
  final bool isImage;
  final VoidCallback press;
  const PeriodHealthCard(
      this.svgSrc,
      {Key? key,
        required this.text1,
        required this.text2,
        required this.col,
        required this.isImage, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.2,
      width: double.infinity,
      color: col,
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(text1,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'OpenSans'
                  ),),
              ),
              SizedBox(
                height: 2,
              ),
              Text(text2,
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.w600,
                    fontSize: 10
                ),),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: GestureDetector(
                  onTap: press,
                    child: BrowseButton()),
              )
            ],
          ),
          Container(
              width: size.height * 0.15,
              height: size.height * 0.15,
              child: isImage ? Image.asset(svgSrc) : SvgPicture.asset(svgSrc,
                height: size.height *0.15,
                width: size.height * 0.15,
              ))
        ],
      ),
    );
  }
}