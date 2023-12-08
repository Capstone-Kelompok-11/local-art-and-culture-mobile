import 'package:flutter/material.dart';
import 'package:local_art_and_culture/src/feature/chat/chat_screen.dart';
import 'package:local_art_and_culture/src/feature/chat/pesan_semua_screen.dart';
import 'package:local_art_and_culture/src/feature/chat/pesan_unreply_screen.dart';
import 'package:local_art_and_culture/src/feature/chatbot/bantuan_screen.dart';

import 'package:local_art_and_culture/src/feature/chatbot/chatbot_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PesanSemuaScreen(),
    );
  }
}
