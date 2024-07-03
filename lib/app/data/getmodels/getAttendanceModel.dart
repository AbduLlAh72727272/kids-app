// To parse this JSON data, do
//
//     final getAttendanceModel = getAttendanceModelFromJson(jsonString);

import 'dart:convert';

List<GetAttendanceModel> getAttendanceModelFromJson(String str) => List<GetAttendanceModel>.from(json.decode(str).map((x) => GetAttendanceModel.fromJson(x)));

String getAttendanceModelToJson(List<GetAttendanceModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetAttendanceModel {
    final int? id;
    final int? userId;
    final DateTime? enteredDate;
    final String? checkIn;
    final String? note;
    final DateTime? createdAt;

    GetAttendanceModel({
        this.id,
        this.userId,
        this.enteredDate,
        this.checkIn,
        this.note,
        this.createdAt,
    });

    factory GetAttendanceModel.fromJson(Map<String, dynamic> json) => GetAttendanceModel(
        id: json["id"],
        userId: json["user_id"],
        enteredDate: json["entered_date"] == null ? null : DateTime.parse(json["entered_date"]),
        checkIn: json["check_in"],
        note: json["note"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "entered_date": enteredDate?.toIso8601String(),
        "check_in": checkIn,
        "note": note,
        "created_at": createdAt?.toIso8601String(),
    };
}
