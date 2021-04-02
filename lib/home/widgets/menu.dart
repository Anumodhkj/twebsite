import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:thump/home/widgets/menufordesktop.dart';
import 'package:thump/home/widgets/menufortablet.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      tablet: Menufortablet(),
      desktop: Menufordesktop(),
      mobile: Menufortablet(),
    );
  }
}

// Container(
//                padding:EdgeInsets.only(left: width*0.01),
//                                 width: width/2,
//                                 height: 130,
//                                 // color: Colors.red,
//                                 child: Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                 children:[
//                                          TextButton(onPressed: (){

//                                          },
//                                          child:Text("HOME",style: TextStyle(fontSize:18),)
//                                           ),
//                                          Text("HOME",style: TextStyle(fontSize:18),),
//                                          Text("ABOUT",style: TextStyle(fontSize:18),),
//                                          Text("WORK",style: TextStyle(fontSize:18),),
//                                          Text("SERVICE",style: TextStyle(fontSize:18),),
//                                          Text("CLIENT",style: TextStyle(fontSize:18),),
//                                          Text("CONTACT",style: TextStyle(fontSize:18),),
//                                          Icon(Icons.search)

//                                 ]
//                               ),);///home/about ............
