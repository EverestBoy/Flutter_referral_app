import 'package:flutter/material.dart';

// Importing header of navigation drawer
import './NavTopBottomWidget/mainNavDrawerHeader.dart';

// Importing menus of navigation drawer
import './NavTopBottomWidget/mainNavDrawerBase.dart';


class NavDrawer extends StatefulWidget {
  String name;
  String image;
  NavDrawer(String name, String image){
    this.name = name;
    this.image = image;
  }
  @override
  _NavDrawerState createState() => _NavDrawerState(name, image);
  
}

class _NavDrawerState extends State<NavDrawer> {

  String name;
  String image;
  _NavDrawerState(String name, String image){
    this.name = name;
    this.image = image;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          mainNavDrawerHeader(name, image),
          MainNavDrawerBase()
        ],
      ),
      
    );
  }
}