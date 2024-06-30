// To parse this JSON data, do
//
//     final signInResponseModel = signInResponseModelFromJson(jsonString);

import 'dart:convert';

SignInResponseModel signInResponseModelFromJson(String str) => SignInResponseModel.fromJson(json.decode(str));

String signInResponseModelToJson(SignInResponseModel data) => json.encode(data.toJson());

class SignInResponseModel {
    final String? message;
    final String? token;
    final User? user;

    SignInResponseModel({
        this.message,
        this.token,
        this.user,
    });

    factory SignInResponseModel.fromJson(Map<String, dynamic> json) => SignInResponseModel(
        message: json["message"],
        token: json["token"],
        user: json["user"] == null ? null : User.fromJson(json["user"]),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "token": token,
        "user": user?.toJson(),
    };
}

class User {
    final int? id;
    final String? role;
    final String? email;
    final String? password;
    final DateTime? createdAt;
    final String? otp;
    final DateTime? otpExpiry;

    User({
        this.id,
        this.role,
        this.email,
        this.password,
        this.createdAt,
        this.otp,
        this.otpExpiry,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        role: json["role"],
        email: json["email"],
        password: json["password"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        otp: json["otp"],
        otpExpiry: json["otp_expiry"] == null ? null : DateTime.parse(json["otp_expiry"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "role": role,
        "email": email,
        "password": password,
        "created_at": createdAt?.toIso8601String(),
        "otp": otp,
        "otp_expiry": otpExpiry?.toIso8601String(),
    };
}
