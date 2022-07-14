import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class YogaStretchCard extends StatelessWidget {
  final String text1;
  final String text2;
  final String svgSrc;
  const YogaStretchCard(
      {Key? key,
      required this.text1,
      required this.text2,
      required this.svgSrc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          color: Colors.pink.shade50, borderRadius: BorderRadius.circular(15)),
      height: size.height * 0.09,
      padding: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  text1,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'OpenSans',
                      color: Color(0xffA8417F)),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                text2,
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.w600,
                    fontSize: 10),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: Container(
                //width: size.height * 0.09,
                //height: size.height * 0.09,
                child: SvgPicture.asset(
                  svgSrc,
                  //height: size.height * 0.09,
                  //width: size.height * 0.09,
                )),
          )
        ],
      ),
    );
  }
}
