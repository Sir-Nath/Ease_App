import 'package:flutter/material.dart';

class ProfilePics extends StatelessWidget {
  const ProfilePics({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15),
      child: CircleAvatar(
        backgroundImage: AssetImage('assets/images/Profile Image.png',)
      ),
    );
  }
}