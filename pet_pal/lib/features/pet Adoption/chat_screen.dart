import 'package:flutter/material.dart';

import 'package:pet_pal/model/pet.dart';

class ChatScreen extends StatelessWidget {
 
  const ChatScreen({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat with Shelter/Owner'),
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
