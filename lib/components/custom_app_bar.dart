import 'package:ease_app/components/profile_pics.dart';
import 'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget {
  final VoidCallback press;
  final String text;
  const CustomAppBar({Key? key, required this.text, required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: press,
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              text,
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.w700,
                  fontSize: 21
              ),
            ),
            Spacer(),
            ProfilePics()
          ],
        ),
      ),
    );
  }
}