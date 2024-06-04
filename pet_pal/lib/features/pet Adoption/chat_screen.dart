import 'package:flutter/material.dart';


class ChatScreen extends StatelessWidget {
 
  const ChatScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat with Shelter/Owner'),
      ),
      body: const Center(
        child: Text(
          'Messaging functionality is not yet implemented. Integrate with your preferred messaging system.',
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
