// To parse this JSON data, do
//
//     final signInPostModel = signInPostModelFromJson(jsonString);

import 'dart:convert';

SignInPostModel signInPostModelFromJson(String str) => SignInPostModel.fromJson(json.decode(str));

String signInPostModelToJson(SignInPostModel data) => json.encode(data.toJson());

class SignInPostModel {
    final String? email;
    final String? password;

    SignInPostModel({
        this.email,
        this.password,
    });

    factory SignInPostModel.fromJson(Map<String, dynamic> json) => SignInPostModel(
        email: json["email"],
        password: json["password"],
    );

    Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
    };
}
