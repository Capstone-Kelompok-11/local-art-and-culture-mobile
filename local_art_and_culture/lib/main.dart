import 'package:flutter/material.dart';
import 'package:local_art_and_culture/src/feature/chat/home_chat_screen.dart';
import 'package:local_art_and_culture/src/feature/chatbot/chatbot_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatbotScreen(),
    );
  }
}
