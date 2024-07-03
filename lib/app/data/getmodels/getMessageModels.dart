// To parse this JSON data, do
//
//     final getMessagesModel = getMessagesModelFromJson(jsonString);

import 'dart:convert';

List<GetMessagesModel> getMessagesModelFromJson(String str) => List<GetMessagesModel>.from(json.decode(str).map((x) => GetMessagesModel.fromJson(x)));

String getMessagesModelToJson(List<GetMessagesModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetMessagesModel {
    final int? id;
    final int? senderId;
    final int? receiverId;
    final String? message;
    final dynamic photoLink;
    final dynamic fileLink;
    final DateTime? sentAt;

    GetMessagesModel({
        this.id,
        this.senderId,
        this.receiverId,
        this.message,
        this.photoLink,
        this.fileLink,
        this.sentAt,
    });

    factory GetMessagesModel.fromJson(Map<String, dynamic> json) => GetMessagesModel(
        id: json["id"],
        senderId: json["sender_id"],
        receiverId: json["receiver_id"],
        message: json["message"],
        photoLink: json["photo_link"],
        fileLink: json["file_link"],
        sentAt: json["sent_at"] == null ? null : DateTime.parse(json["sent_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "sender_id": senderId,
        "receiver_id": receiverId,
        "message": message,
        "photo_link": photoLink,
        "file_link": fileLink,
        "sent_at": sentAt?.toIso8601String(),
    };
}
