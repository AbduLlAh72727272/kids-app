// To parse this JSON data, do
//
//     final getFilesModel = getFilesModelFromJson(jsonString);

import 'dart:convert';

List<GetFilesModel> getFilesModelFromJson(String str) => List<GetFilesModel>.from(json.decode(str).map((x) => GetFilesModel.fromJson(x)));

String getFilesModelToJson(List<GetFilesModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetFilesModel {
    final int? id;
    final String? name;
    final String? fileLink;
    final int? userId;

    GetFilesModel({
        this.id,
        this.name,
        this.fileLink,
        this.userId,
    });

    factory GetFilesModel.fromJson(Map<String, dynamic> json) => GetFilesModel(
        id: json["id"],
        name: json["name"],
        fileLink: json["file_link"],
        userId: json["user_id"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "file_link": fileLink,
        "user_id": userId,
    };
}
