import 'package:flutter/material.dart';

class Menufortablet extends StatefulWidget {
  @override
  _MenufortabletState createState() => _MenufortabletState();
}

class _MenufortabletState extends State<Menufortablet> {
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    return Container(
              //  padding:EdgeInsets.only(left: width*0.01),
              // width: width/2,
              height: 130,
              // color: Colors.red,
              child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children:[                
                       IconButton(icon:Icon(Icons.menu),
                        onPressed: (){
                          Scaffold.of(context).openDrawer();
                        },
                       )
                       ]
      ),);//
  }
}