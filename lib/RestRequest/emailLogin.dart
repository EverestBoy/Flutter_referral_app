import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hello_world/Activities/MainActivity.dart';
import 'package:hello_world/RestRequest/model/LoginModel.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

// flutter secure storage
// A Flutter plugin to store data in secure storage:

//     Keychain is used for iOS
//     AES encryption is used for Android. AES secret key is encrypted with RSA and RSA key is stored in KeyStore
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'tokenLogin.dart';


class PostService {

  String sendJson;
  BuildContext context;

  void set jsonBody(String sendJson) {
    this.sendJson = sendJson;
  }

  void set contextLogin(BuildContext context){
    this.context = context;
  }



  final String postsURL = "https://vast-ridge-92602.herokuapp.com/api/user/login";
  Map<String, String> headers = {"Content-type": "application/json"};

  Future<LoginModel> getPosts() async {

    print("For test "+this.sendJson);

    Response res = await post(postsURL, headers: headers, body: this.sendJson);

    if (res.statusCode == 200) {
      print("Yahoo ");
      var user = LoginModel.fromJson(json.decode(res.body));

      // exception in implementing flutter secure storage
      // final storage = new FlutterSecureStorage();
      // await storage.write(key: 'jwt', value: "sdkfklsdjf");
      // await storage.deleteAll();

      // SharedPreferences prefs = await SharedPreferences.getInstance();
      // prefs.setString("name", user.name);
      // prefs.setString("image", user.image);
      // prefs.setString("phone", user.phone);
      // prefs.setString("email", user.email);

      print("Image is "+user.image);
      Navigator.pushReplacement(context, CupertinoPageRoute(
        builder: (context) => MainActivity(),
      ));


      return user;
      

    } else {
      print("Error in authorization "+res.body);
      // throw "Can't get posts.";
    }
  }
}
