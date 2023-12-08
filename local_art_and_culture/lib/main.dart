import 'package:flutter/material.dart';
import 'package:local_art_and_culture/src/feature/chat/chat_screen.dart';
import 'package:local_art_and_culture/src/feature/chat/pesan_semua_screen.dart';
import 'package:local_art_and_culture/src/feature/chat/pesan_unreply_screen.dart';
import 'package:local_art_and_culture/src/feature/chatbot/bantuan_screen.dart';
import 'package:local_art_and_culture/constants/color_collections.dart';
import 'package:local_art_and_culture/src/feature/splash%20login/splashscreen.dart';
import 'package:local_art_and_culture/src/feature/chatbot/chatbot_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Notes App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: LoggedInHandler(),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
      },
      home: ChatbotScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => OnboardScreen(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          children: [
            Positioned(
              top: 378.0,
              left: 143.0,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OnboardScreen()),
                  );
                },
                child: Image.asset(
                  'assets/logo.png',
                  width: 108.43,
                  height: 78.02,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
