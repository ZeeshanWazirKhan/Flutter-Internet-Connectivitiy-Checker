import 'package:flutter/material.dart';
import 'package:i_connect/screens/chat_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ChatScreen()));
          },
          color: Colors.blue,
          textColor: Colors.white,
          child: Text('Go to Chats'),
        ),
      ),
    );
  }
}
