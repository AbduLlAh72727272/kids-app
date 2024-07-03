import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:kidslearning/app/data/getmodels/getMessageModels.dart';
import 'package:kidslearning/app/data/postmodels/sendMessageModel.dart';
import 'package:kidslearning/app/resources/apiKeys.dart';
import 'package:kidslearning/app/resources/localStorage.dart';

class ChatsRepository {
  Future<List<GetMessagesModel>> fetchMessages() async {
    try {
      final response = await http.get(Uri.parse(getMesssageUrl), headers: {
        "Authorization": "Bearer ${sharedPrefbox.read(userToken)}"
      });

      if (response.statusCode == 200) {
        List<GetMessagesModel> messages =
            getMessagesModelFromJson(response.body);
        return messages;
      } else {
        print('Failed to load messages: ${response.statusCode}');
        throw Exception();
      }
    } catch (error) {
      print('Error fetching messages: $error');
      throw Exception();
    }
  }

  //send message and then get all messages
 Future<void> sendAndFetchMessages(SendMessageModel sendMessageModel) async {
  try {

    final body = jsonEncode(sendMessageModel.toJson());

    print('Sending: $body'); // Log the request body

    final response = await http.post(
      Uri.parse(sendMessageUrl),
      headers: {
        "Authorization": "Bearer ${sharedPrefbox.read(userToken)}",
        'Content-Type': 'application/json',
      },
      body: body,
    );

    print('Response: ${response.body}');

    if (response.statusCode == 200) {

     
    } else {
      print('Failed to load messages: ${response.statusCode}');
      throw Exception('Failed to load messages');
    }
  } catch (error) {
    print('Error fetching messages: $error');
    throw Exception('Error fetching messages');
  }}
}
