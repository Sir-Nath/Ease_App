import 'package:flutter/material.dart';

class DateColumn extends StatelessWidget {
  final String day;
  final String date;
  bool isOn = false;
  DateColumn({Key? key, required this.day, required this.date, required this.isOn}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
            color: isOn ? Color(0xffA8417F): Colors.transparent,
            borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          children: [
            Text(
              day,
              style: TextStyle(
                  color: isOn ? Colors.white.withOpacity(0.5) : Colors.black.withOpacity(0.4),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'OpenSans'
              ),
            ),
            SizedBox(height: 5,),
            Text(
              date,
              style: TextStyle(
                  color: isOn ? Colors.white : Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'OpenSans'
              ),)
          ],
        ),
      ),
    );
  }
}