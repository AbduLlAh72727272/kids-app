import 'dart:convert';

class SendMessageModel {
  final String message;
  final int receiverId;

  SendMessageModel({required this.message, required this.receiverId});

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'receiverId': receiverId,
    };
  }

  @override
  String toString() {
    return jsonEncode(toJson());
  }
}
