import 'package:flutter/material.dart';

// Importing header of navigation drawer
import './NavTopBottomWidget/mainNavDrawerHeader.dart';

// Importing menus of navigation drawer
import './NavTopBottomWidget/mainNavDrawerBase.dart';


class NavDrawer extends StatefulWidget {
  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          mainNavDrawerHeader(),
          MainNavDrawerBase()
        ],
      ),
      
    );
  }
}