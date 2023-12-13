import 'package:flutter/material.dart';
import 'package:local_art_and_culture/src/feature/event/event_page.dart';

void main() {
  runApp(EventPage());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: EventPage(),
    );
  }
}
