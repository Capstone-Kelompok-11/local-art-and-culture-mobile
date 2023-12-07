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
<<<<<<< Updated upstream
        '/home': (context) => const MyHomePage(),
        '/profile': (context) => const ProfilPage(),

        // ... daftar rute lainnya ...
      },
=======
        '/splashscreen': (context) => SplashScreen(),
      },
      home: SplashScreen(),
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
>>>>>>> Stashed changes
    );
  }
}
