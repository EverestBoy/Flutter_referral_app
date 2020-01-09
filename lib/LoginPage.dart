import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'Activities/MainActivity.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import './RestRequest/tokenLogin.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import './RestRequest/emailLogin.dart';

import 'package:http/http.dart' as http;

import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'RestRequest/emailLogin.dart';



class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextStyle style = new TextStyle(fontSize: 20.0);

  TextEditingController _emailInputController = TextEditingController();
  TextEditingController _passwordInputController = TextEditingController();
  String _emailText = ""; 

  void _onLoading() {
    showDialog(
      context: context,
      barrierDismissible: false,

      builder: (BuildContext context) {
        return Dialog(
          child: Container(
            
            padding: EdgeInsets.all(16),
            child: new Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                new CircularProgressIndicator(backgroundColor: Colors.orange,),
                new Text("     Authenticating", style: new TextStyle(fontSize: 18.0),),
              ],
            ),
          )
        );
      },
    );
  // new Future.delayed(new Duration(seconds: 3), () {
  //   Navigator.pop(context); //pop dialog
  //   _login();
  // });
}

  _loginClicked(BuildContext context){
    _onLoading();
    FocusScope.of(context).requestFocus(FocusNode());
    print("Input email: "+_emailInputController.text+"\npassword: "+_passwordInputController.text);
    String sendJson = '{"email": "'+_emailInputController.text+'", "password": "'+_passwordInputController.text+'"}';
    PostService postService = new PostService();
    postService.jsonBody = sendJson;
    // Test test = new Test();
    // print(test.getText("dslfkj"));
    postService.contextLogin = context;
    var postResponse = postService.getPosts();
    print("Response is "+postResponse.toString());

    // final scaffold = Scaffold.of(context);
    // scaffold.showSnackBar(
    //   SnackBar(
    //     content: const Text('Added to favorite'),
    //     action: SnackBarAction(
    //         label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
    //   ),
    // );
    // setState(() {
    //   _emailText = _emailInputController.text;
    //   Toast.show("Input email : $_emailText", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
    // });
    // var data = { 'email' : 'John', 'lastName' : 'Doe' };

    
   
  }

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
 
       statusBarColor: Color(0xFFe36b17),
       
    ));

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
      controller: _passwordInputController,
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
  Future<Post> createPost(String url, {Map body}) async {
    return http.post(url, body: body).then((http.Response response) {
      final int statusCode = response.statusCode;
  
      if (statusCode < 200 || statusCode > 400 || json == null) {
        throw new Exception("Error while fetching data");
      }
      return Post.fromJson(json.decode(response.body));
    });
  }
    

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