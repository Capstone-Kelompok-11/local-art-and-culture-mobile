import 'package:flutter/material.dart';
import 'package:local_art_and_culture/src/feature/home%20page/src/screen_home_page.dart';
import './src/feature/profil/screen_profil.dart';

void main() {
  runApp(ProfilPage());
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => const MyHomePage(),
        '/profile': (context) => const ProfilPage(),

        // ... daftar rute lainnya ...
      },
    );
  }
}
