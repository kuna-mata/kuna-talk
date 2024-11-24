import 'package:flutter/material.dart';

import 'package:kuna_talk/api/message.dart';
import 'package:kuna_talk/dto/create_message_dto.dart';
import 'package:kuna_talk/dto/fetch_all_messages.dto.dart';
import 'package:kuna_talk/dto/fetch_messages_in_minute_dto.dart';
import 'package:kuna_talk/models/message.dart';
import 'package:kuna_talk/utils/util.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  ChatState createState() => ChatState();
}

class ChatState extends State<Chat> {
  final person1 = '4rwodzn1uuacfpq';
  final person2 = 'c4w28yb8dmgo4lz';

  List<Message> messages = [];

  final TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    loadAllMessages();
  }

  Future<void> loadAllMessages() async {
    final response = await fetchAllMessages(
      FetchAllMessagesDto(senderId: person1, receiverId: person2),
    );

    setState(() {
      messages = response;
    });
  }

  Future<void> loadMessagesInMinute({DateTime? createdAt}) async {
    try {
      final response = await fetchMessagesInMinute(
        FetchMessageInMinuteDto(
          senderId: person1,
          receiverId: person2,
          createdAt: createdAt!,
        ),
      );

      setState(() {
        messages.addAll(response);
      });
    } catch (e) {
      throw Exception('loadMessages error: $e');
    }
  }

  Future<void> sendMessage(String message) async {
    final messageId = generateRandomId(15);

    if (message.isEmpty) {
      print('Message required');
      return;
    }

    final data = CreateMessageDto(
      senderId: person1,
      receiverId: person2,
      messageId: messageId,
      message: message,
      updatedAt: DateTime.now(),
      createdAt: DateTime.now(),
    );

    try {
      final response = await createMessage(data);

      setState(() {
        controller.clear();
      });

      loadMessagesInMinute(createdAt: response.createdAt);
    } catch (e) {
      throw Exception('sendMessage error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kuna Talk'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: messages.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(messages[index].message),
                  subtitle: Text(messages[index].senderId),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(height: 10.0),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 183, 168, 123),
            height: 100,
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: controller,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Type messages',
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      sendMessage(controller.text);
                    });
                  },
                  child: const Text('Send'),
                )
              ],
            ),
          ),
        ],
      ),
      resizeToAvoidBottomInset: true,
    );
  }
}
