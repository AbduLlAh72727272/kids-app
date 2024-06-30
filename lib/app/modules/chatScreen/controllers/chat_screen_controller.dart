import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatScreenController extends GetxController {
 
  var chatMessages = [
    {
      'text': "Hello, I want to know about my kid's performance",
      'isSentByMe': true,
      'time': "Wed 22 June",
      'avatarUrl': null,
    },
    {
      'text': "Thank you for reaching out to me, I will be here to help you.",
      'isSentByMe': false,
      'time': "Wed 22 June",
      'avatarUrl': 'assets/avatar.png',
    },
  ].obs;

  TextEditingController messageController = TextEditingController();

  void sendMessage() {
    if (messageController.text.trim().isNotEmpty) {
      chatMessages.insert(0, {
        'text': messageController.text.trim(),
        'isSentByMe': true,
        'time': DateTime.now().toString(),
        'avatarUrl': null,
      });
      messageController.clear();
    }
  }
}
