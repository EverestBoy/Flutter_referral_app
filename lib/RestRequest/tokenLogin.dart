import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;


class Post {
  
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
  getTitle(){
    return this.title;
  }
}