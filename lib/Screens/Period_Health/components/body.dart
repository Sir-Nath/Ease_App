import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height * 0.2,
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text('Period Health and Well-Being',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12
                      ),),
                      Text('Here\'s is a bunch of help resources, just for you')
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
