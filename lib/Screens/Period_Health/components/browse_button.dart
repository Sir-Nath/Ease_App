import 'package:flutter/material.dart';

class BrowseButton extends StatelessWidget {
  const BrowseButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      child: Text(
        'Browse Sessions',
        style: TextStyle(
            color: Colors.white,
            fontFamily: 'OpenSans',
            fontSize: 11,
            fontWeight: FontWeight.w600),
      ),
      decoration: BoxDecoration(
        //color: Colors.purple.shade500,
        color: Color(0xffA8417F),
        borderRadius: BorderRadius.circular(24),
      ),
    );
  }
}