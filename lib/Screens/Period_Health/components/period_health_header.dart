import 'package:flutter/material.dart';

class PeriodHealthHeader extends StatelessWidget {
  const PeriodHealthHeader({
    Key? key,
    required this.size,
  }) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.2,
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'Period Health and \n'
                      'Well-being',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'OpenSans',
                      fontSize: 20.4),
                ),
              ),
              SizedBox(height: size.width * 0.01),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'Here\'s is a bunch of help resources, just for you!',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'OpenSans',
                      fontSize: 11),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/Profile Image.png'),
            ),
          )
        ],
      ),
    );
  }
}