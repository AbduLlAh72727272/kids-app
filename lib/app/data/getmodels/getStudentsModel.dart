// To parse this JSON data, do
//
//     final getStudentsModel = getStudentsModelFromJson(jsonString);

import 'dart:convert';

List<GetStudentsModel> getStudentsModelFromJson(String str) => List<GetStudentsModel>.from(json.decode(str).map((x) => GetStudentsModel.fromJson(x)));

String getStudentsModelToJson(List<GetStudentsModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetStudentsModel {
    final int? id;
    final int? userId;
    final String? studentName;
    final String? getStudentsModelClass;
    final String? rollNo;
    final String? phoneNo;
    final String? email;

    GetStudentsModel({
        this.id,
        this.userId,
        this.studentName,
        this.getStudentsModelClass,
        this.rollNo,
        this.phoneNo,
        this.email,
    });

    factory GetStudentsModel.fromJson(Map<String, dynamic> json) => GetStudentsModel(
        id: json["id"],
        userId: json["user_id"],
        studentName: json["student_name"],
        getStudentsModelClass: json["class"],
        rollNo: json["roll_no"],
        phoneNo: json["phone_no"],
        email: json["email"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "student_name": studentName,
        "class": getStudentsModelClass,
        "roll_no": rollNo,
        "phone_no": phoneNo,
        "email": email,
    };
}
