import 'package:flutter/material.dart';
import 'package:i_connect/screens/home_screen.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          color: Colors.blue,
          textColor: Colors.white,
          child: Text('Back to Home'),
        ),
      ),
    );
  }
}
