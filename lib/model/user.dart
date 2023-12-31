import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String id;
  final String email;
  final String password;

  User({
    this.id = "",
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'password': password,
      };

  static User fromJson(Map<String, dynamic> json) =>
      User(email: json['email'], password: json['password']);
}
