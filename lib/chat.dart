import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  ChatState createState() => ChatState();
}

class ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();

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
              onPressed: () => {},
              child: const Text('Send'),
            )
          ],
        ),
      ),
    );
  }
}
