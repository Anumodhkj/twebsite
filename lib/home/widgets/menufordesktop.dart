import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:thump/home/widgets/animationHomeButton.dart';

class Menufordesktop extends StatefulWidget {
  @override
  _MenufordesktopState createState() => _MenufordesktopState();
}

class _MenufordesktopState extends State<Menufordesktop> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.only(left: width * 0.01),
      width: width / 2,
      height: 130,
      // color: Colors.red,
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AnimationHomeButton(),
            Text(
              "ABOUT",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "WORK",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "SERVICE",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "CLIENT",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "CONTACT",
              style: TextStyle(fontSize: 18),
            ),
            Icon(Icons.search)
          ]),
    );

    ///home/about ............
  }
}
