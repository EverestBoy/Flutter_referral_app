import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'Activities/MainActivity.dart';


import 'package:http/http.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextStyle style = new TextStyle(fontSize: 20.0);

  TextEditingController _emailInputController = TextEditingController();
  String _emailText = ""; 

  _loginClicked(BuildContext context){
    // final scaffold = Scaffold.of(context);
    // scaffold.showSnackBar(
    //   SnackBar(
    //     content: const Text('Added to favorite'),
    //     action: SnackBarAction(
    //         label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
    //   ),
    // );
    setState(() {
      _emailText = _emailInputController.text;
      Toast.show("Input email : $_emailText", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
    });
    var data = { 'email' : 'John', 'lastName' : 'Doe' };

    Navigator.push(context, MaterialPageRoute(
      builder: (context) => MainActivity()
    ));

   
  }

  @override
  Widget build(BuildContext context) {

    final emailField = new TextField(
      controller: _emailInputController,
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
    final loginButton = Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(30.0),
              color: Color(0xffe37528),
              child: MaterialButton(
                minWidth: 150.0,
                padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                onPressed: () {
                  _loginClicked(context);
                },
                child: Text("Login",
                    textAlign: TextAlign.center,
                    style: style.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            );
    

    return Scaffold(

      appBar: AppBar(
        title: Text("Log in"),
        backgroundColor: Color(0xffe37528),
      ),

      body: Center(
        child: Container(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              emailField,
              SizedBox(height: 16.0,),
              passwordField,
              SizedBox(height: 32.0,),
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    loginButton
                  ],
                ),
              ),
            ],
          ),
        )
      ),
      
    );
  }
}