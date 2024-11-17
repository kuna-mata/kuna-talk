import 'package:flutter/material.dart';

import 'package:kuna_talk/api/message.dart';
import 'package:kuna_talk/dto/create_message_dto.dart';
import 'package:kuna_talk/utils/util.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  ChatState createState() => ChatState();
}

class ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();

    Future<void> sendMessage(String message) async {
      if (message.isEmpty) {
        print('Message required');
        return;
      }

      final data = CreateMessageDto(
        senderId: generateRandomId(15),
        receiverId: generateRandomId(15),
        messageId: generateRandomId(15),
        message: message,
        updatedAt: DateTime.now(),
        createdAt: DateTime.now(),
      );

      await createMessage(data);
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
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
              onPressed: () async {
                await sendMessage(controller.text);
              },
              child: const Text('Send'),
            )
          ],
        ),
      ),
    );
  }
}
