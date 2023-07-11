import 'package:flutter/material.dart';

class NotInternetScreen extends StatelessWidget {
  const NotInternetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('No internet connection'),
      ),
    );
  }
}
