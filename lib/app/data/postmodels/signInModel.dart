// To parse this JSON data, do
//
//     final signInPostModel = signInPostModelFromJson(jsonString);

import 'dart:convert';

SignInPostModel signInPostModelFromJson(String str) => SignInPostModel.fromJson(json.decode(str));

String signInPostModelToJson(SignInPostModel data) => json.encode(data.toJson());

class SignInPostModel {
    final String? email;
    final String? password;
    final String? role;

    SignInPostModel({
        this.email,
        this.password,
        this.role,
    });

    factory SignInPostModel.fromJson(Map<String, dynamic> json) => SignInPostModel(
        email: json["email"],
        password: json["password"],
        role: json["role"],
    );

    Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
        "role":role,
    };
}
