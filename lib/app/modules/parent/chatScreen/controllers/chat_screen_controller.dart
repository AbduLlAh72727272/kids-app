import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kidslearning/app/data/getmodels/getMessageModels.dart';
import 'package:kidslearning/app/data/postmodels/sendMessageModel.dart';
import 'package:kidslearning/app/repositories/chatsRepo.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class ChatScreenController extends GetxController {
  final messageController = TextEditingController();
  final chatsRepository = ChatsRepository();
  var messages = <GetMessagesModel>[].obs;

  late WebSocketChannel channel;

  @override
  void onInit() {
    super.onInit();
    connectWebSocket();
  }

  void connectWebSocket() {
    channel = WebSocketChannel.connect(
      Uri.parse('wss://your-websocket-url'), // Replace with your WebSocket URL
    );

    channel.stream.listen((data) {
      final jsonData = jsonDecode(data);
      messages.add(GetMessagesModel.fromJson(jsonData));
    });
  }

  void sendMessage(SendMessageModel sendMessageModel) {
    final jsonMessage = jsonEncode(sendMessageModel.toJson());
    channel.sink.add(jsonMessage);
  }

  @override
  void onClose() {
    channel.sink.close(WebSocketStatus.goingAway);
    super.onClose();
  }
 
  // var chatMessages = [
  //   {
  //     'text': "Hello, I want to know about my kid's performance",
  //     'isSentByMe': true,
  //     'time': "Wed 22 June",
  //     'avatarUrl': null,
  //   },
  //   {
  //     'text': "Thank you for reaching out to me, I will be here to help you.",
  //     'isSentByMe': false,
  //     'time': "Wed 22 June",
  //     'avatarUrl': 'assets/avatar.png',
  //   },
  // ].obs;

  // TextEditingController messageController = TextEditingController();

  // ChatsRepository chatsRepository=ChatsRepository();
}
