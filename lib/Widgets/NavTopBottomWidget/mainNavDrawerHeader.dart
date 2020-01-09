import 'package:flutter/material.dart';

class mainNavDrawerHeader extends StatefulWidget {
  String name;
  String image;

  mainNavDrawerHeader(String name, String image){
    this.name = name;
    this.image = image;
  }

  @override
  _mainNavDrawerHeaderState createState() => _mainNavDrawerHeaderState(name, image);
}

class _mainNavDrawerHeaderState extends State<mainNavDrawerHeader> {

  String name;
  String image;

  _mainNavDrawerHeaderState(String name, String image){
    this.name = name;
    this.image = image;
  }

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
                  Container(
                    width: 80.0,
                    height: 80.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: FadeInImage(
                          placeholder: AssetImage("assets/test.jpeg"),
                          image: NetworkImage(image),
                          fit: BoxFit.cover,
                  ))),
                  SizedBox(height: 16,),
                  Text(name, style: new TextStyle(color: Colors.white),)
                ],
            )
          ),
    );
  }
}