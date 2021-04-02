import 'package:flutter/material.dart';
import 'package:thump/common/appbar.dart';
import 'package:thump/home/widgets/menu.dart';
import 'package:thump/home/widgets/thumplogo.dart';

class Thump extends StatefulWidget {
  @override
  _ThumpState createState() => _ThumpState();
}

class _ThumpState extends State<Thump> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      
      body: Stack(children: [
        Scaffold(
          drawer: Drawer(),
            body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 130,
                  width: width,
                  child: Image.asset(
                    "images/appbarimage.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: width * 0.052),
                  // padding:EdgeInsets.only(left: 50),
                  width: width,
                  height: 130,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ThumpLogo(),
                        Menu()
                      ]),
                )
              ],
            )
          ],
        ))
      ]),
    );
  }
}
