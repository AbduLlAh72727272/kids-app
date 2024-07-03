import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:kidslearning/app/data/getmodels/getMessageModels.dart';
import 'package:kidslearning/app/data/getmodels/signInReponseModel.dart';
import 'package:kidslearning/app/data/postmodels/sendMessageModel.dart';
import 'package:kidslearning/app/resources/colors.dart';
import 'package:kidslearning/app/resources/icons.dart';
import 'package:kidslearning/app/resources/localStorage.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controllers/chat_screen_controller.dart';

class ChatScreenView extends StatefulWidget {
  const ChatScreenView({super.key});

  @override
  State<ChatScreenView> createState() => _ChatScreenViewState();
}

class _ChatScreenViewState extends State<ChatScreenView> {
  final controller=Get.put(ChatScreenController());
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
          FutureBuilder(
              future: controller.chatsRepository.fetchMessages(),
              builder:
                  (context, AsyncSnapshot<List<GetMessagesModel>> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (!snapshot.hasData) {
                  return Center(
                    child: Text("Not found"),
                  );
                } else if (snapshot.hasError) {
                  return Center(
                    child: Text(snapshot.error.toString()),
                  );
                }
                return Expanded(
                  child: ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        return ChatBubble(
                            message: snapshot.data![index].message.toString(),
                            isSentByMe: signInResponseModelFromJson(
                                            sharedPrefbox.read(userInformation))
                                        .user!
                                        .id ==
                                    snapshot.data![index].senderId
                                ? true
                                : false,
                            time: snapshot.data![index].sentAt
                                .toString()
                                .split(' ')[0]);
                      }),
                );
              }),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 40.h,
                    child: TextField(
                      controller: controller.messageController,
                      style: TextStyle(color: blackcolor),
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(
                              top: 0, bottom: 0, left: 20),
                          hintText: "Type a message",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              borderSide: const BorderSide(color: greyColor)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              borderSide: const BorderSide(color: greyColor))),
                    ),
                  ),
                ),
                5.widthBox,
                GestureDetector(
                  onTap: (){
                    controller.chatsRepository.sendAndFetchMessages(SendMessageModel(
                      message: controller.messageController.text.toString(),
                      receiverId: 2,
                    ));
                   
                  },
                  child: Image.asset(
                    sendButton,
                    width: 40,
                    height: 40,
                  ),
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

  const ChatBubble({
    super.key,
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
              
            ],
          ),
        ],
      ),
    );
  }
}
