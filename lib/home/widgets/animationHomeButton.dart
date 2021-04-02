import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

class AnimationHomeButton extends StatefulWidget {
  @override
  _AnimationHomeButtonState createState() => _AnimationHomeButtonState();
}

class _AnimationHomeButtonState extends State<AnimationHomeButton> {
  bool onhovering = false;
  bool secondcontaniervisible = false;
  void hover() {
    setState(() {
      onhovering = !onhovering;
      onhovering = true;
    });
  }

  void focuschange() {
    setState(() {
      onhovering = !onhovering;
      onhovering = false;
    });
  }

  void sencondcontainer() {
    setState(() {
      secondcontaniervisible = !secondcontaniervisible;
      secondcontaniervisible = true;
      onhovering = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                    onHighlightChanged: (oc) {
                      if (oc) {
                        focuschange();
                        print("focus changed");
                      } else {
                        print("focus not changed");
                      }
                    },
                    onHover: (h) {
                      if (h) {
                        print("hovering Ready");
                        hover();
                      } else {
                        focuschange();
                        print("no hovering");
                      }
                    },
                    onTap: () {
                      // hover();
                      sencondcontainer();
                      focuschange();
                      print("taped");
                    },
                    child: Text(
                      "HOME",
                      style: TextStyle(fontSize: 18),
                    )),
                Visibility(
                  visible: onhovering,
                  child: Container(
                    width: 20,
                    height: 4,
                    color: Colors.black87,
                  ),
                ),
                //one container
                Visibility(
                  visible: secondcontaniervisible,
                  child: Container(
                    width: 20,
                    height: 4,
                    color: Colors.black87,
                  ),
                ),
              ]),
        ])
      ],
    );
  }
}
