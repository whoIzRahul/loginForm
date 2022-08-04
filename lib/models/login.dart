// To parse this JSON data, do
//
//     final login = loginFromJson(jsonString);

import 'dart:convert';

Login loginFromJson(String str) => Login.fromJson(json.decode(str));

String loginToJson(Login data) => json.encode(data.toJson());

class Login {
  Login({
    required this.success,
    required this.message,
  });

  int success;
  String message;

  factory Login.fromJson(Map<String, dynamic> json) => Login(
        success: json["Success"],
        message: json["Message"],
      );

  Map<String, dynamic> toJson() => {
        "Success": success,
        "Message": message,
      };
}
