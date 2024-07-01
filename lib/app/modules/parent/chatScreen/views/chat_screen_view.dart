import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:kidslearning/app/resources/colors.dart';
import 'package:kidslearning/app/resources/icons.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controllers/chat_screen_controller.dart';

class ChatScreenView extends GetView<ChatScreenController> {
  const ChatScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
           Get.back();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              // Handle more button press
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              
              children: const [
               
                Center(
                  child: Text(
                    'Wed 22 June',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                ChatBubble(
                  message: "Hello, I want to know about my kid's performance",
                  isSentByMe: true,
                  time: "Wed 22 June",
                ),
                ChatBubble(
                  message:
                      "Thank you for reaching out to me, I will be here to help you.",
                  isSentByMe: false,
                  avatarUrl: 'assets/avatar.png',
                  time: '', // Replace with your avatar image path
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 40.h,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.only(top: 0, bottom: 0, left: 20),
                        hintText: "Type a message",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: const BorderSide(color: greyColor)),
                      enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: const BorderSide(color: greyColor))
                      ),
                    ),
                  ),
                ),
                5.widthBox,
                Image.asset(
                  sendButton,
                  width: 40,
                  height: 40,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isSentByMe;
  final String time;
  final String? avatarUrl;

  const ChatBubble({super.key, 
    required this.message,
    required this.isSentByMe,
    required this.time,
    this.avatarUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment:
            isSentByMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!isSentByMe && avatarUrl != null)
            CircleAvatar(
              backgroundImage: AssetImage(avatarUrl!),
              radius: 16,
            ),
          const SizedBox(width: 8.0),
          Column(
            crossAxisAlignment:
                isSentByMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Container(
                constraints: const BoxConstraints(maxWidth: 250),
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: isSentByMe ? Colors.red[100] : Colors.blue[100],
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Text(
                  message,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              if (!isSentByMe)
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Text(
                    time,
                    style: const TextStyle(
                      fontSize: 10.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
