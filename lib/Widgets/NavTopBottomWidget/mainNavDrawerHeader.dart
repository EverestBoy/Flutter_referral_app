import 'package:flutter/material.dart';

class mainNavDrawerHeader extends StatefulWidget {
  @override
  _mainNavDrawerHeaderState createState() => _mainNavDrawerHeaderState();
}

class _mainNavDrawerHeaderState extends State<mainNavDrawerHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xffe37528),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                ClipOval(
                  child: Image.asset(
                    "assets/test.jpeg",
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 16.0,),
                Text("Smrity Risal", style: new TextStyle(color: Colors.white),)
              ],
            )
          ),
    );
  }
}