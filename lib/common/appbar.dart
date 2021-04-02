import 'package:flutter/material.dart';

class ThumpAppbar extends StatefulWidget implements PreferredSizeWidget {
  final PreferredSizeWidget bottom;
  final bool isLeadingDrawer;
  final double preferredHeight;
  final String title;
  final Widget leading;
  ThumpAppbar(
      {Key key,
      this.title = '',
      this.bottom,
      this.preferredHeight =100,
      this.isLeadingDrawer = false,
      this.leading})
      : preferredSize = Size.fromHeight(preferredHeight),
        super(key: key);

  @override
  final Size preferredSize;
  @override
  _ThumpAppbarState createState() => _ThumpAppbarState();
}

class _ThumpAppbarState extends State<ThumpAppbar> {
  @override
  Widget build(context) {
    return AppBar(
        centerTitle: true,
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Color.fromRGBO(200, 215, 244, 1),
        elevation: 0.1,
        automaticallyImplyLeading: true,
        leading: widget.isLeadingDrawer
            ? Builder(
                builder: (BuildContext context) {
                  return IconButton(
                    color: Color.fromRGBO(73, 73, 76, 1),
                    iconSize: 100,
                    icon: const Icon(Icons.menu),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    tooltip:
                        MaterialLocalizations.of(context).openAppDrawerTooltip,
                  );
                },
              )
            : widget.leading);
  }
}
