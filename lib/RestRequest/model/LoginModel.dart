import 'package:flutter/foundation.dart';

class LoginModel {
  final String name;
  final String email;
  final String phone;
  final String image;

  LoginModel({
    @required this.name,
    @required this.email,
    @required this.phone,
    @required this.image,
  });

   factory LoginModel.fromJson(Map<String, dynamic> json) {
     String name = json['data']['user']['email'] as String;
      print("Test "+name);
    return LoginModel(
      name: json['data']['user']['name'] as String,
      email: json['data']['user']['email'] as String,
      phone: json['data']['user']['phone'] as String,
      image: json['data']['user']['image'] as String,
    );
  }
}
