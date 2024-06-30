// To parse this JSON data, do
//
//     final createNewPasswordModel = createNewPasswordModelFromJson(jsonString);

import 'dart:convert';

CreateNewPasswordModel createNewPasswordModelFromJson(String str) => CreateNewPasswordModel.fromJson(json.decode(str));

String createNewPasswordModelToJson(CreateNewPasswordModel data) => json.encode(data.toJson());

class CreateNewPasswordModel {
    final String? email;
    final String? password;
    final String? cPassword;

    CreateNewPasswordModel({
        this.email,
        this.password,
        this.cPassword,
    });

    factory CreateNewPasswordModel.fromJson(Map<String, dynamic> json) => CreateNewPasswordModel(
        email: json["email"],
        password: json["password"],
        cPassword: json["cPassword"],
    );

    Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
        "cPassword": cPassword,
    };
}
