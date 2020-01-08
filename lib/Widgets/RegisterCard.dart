import 'package:flutter/material.dart';

class RegisterCard extends StatefulWidget {
  @override
  _RegisterCardState createState() => _RegisterCardState();
}

class _RegisterCardState extends State<RegisterCard> {

  TextStyle style = new TextStyle(fontSize: 20.0);
  

  @override
  Widget build(BuildContext context) {

    final nameField = new TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(16.0),
        hintText: "Email",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))
      ),

    );

    final phoneField = new TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(16.0),
        hintText: "Email",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))
      ),

    );

    final emailField = new TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(16.0),
        hintText: "Email",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))
      ),

    );
    final passwordField = new TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(16.0),
        hintText: "Password",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))
      ),

    );

    final confirmPasswordField = new TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(16.0),
        hintText: "Confirm Password",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))
      ),

    );

    return Container(
      padding: EdgeInsets.fromLTRB(16, 32, 16, 32),
      child: Column(children: <Widget>[
        nameField,
        SizedBox(height: 16.0,),
        phoneField,
        SizedBox(height: 16.0,),
        emailField,
        SizedBox(height: 16.0,),
        passwordField,
        SizedBox(height: 16.0,),
        confirmPasswordField
      ],),
    );
  }
}