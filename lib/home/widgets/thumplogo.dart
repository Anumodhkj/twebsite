import 'package:flutter/material.dart';

class ThumpLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150, height: 150,
      // color: Colors.blue,
      child: Image.asset(
        "images/tlogo.png",
        width: 200,
        height: 200,
      ),
    );
  }
}
