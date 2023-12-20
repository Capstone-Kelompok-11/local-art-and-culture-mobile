import 'package:flutter/material.dart';
import 'package:local_art_and_culture/models/price_model.dart';
import 'package:local_art_and_culture/src/feature/event/screen/home_screen.dart';
import 'package:local_art_and_culture/src/feature/home%20page/src/screen_home_page.dart';
import 'package:local_art_and_culture/src/feature/product/screens/product_page.dart';
import 'package:local_art_and_culture/src/feature/splash%20login/login.dart';
import 'package:local_art_and_culture/src/feature/splash%20login/splashscreen.dart';
import 'package:local_art_and_culture/src/feature/chatbot/chatbot_screen.dart';
import 'package:provider/provider.dart';
import './src/feature/profil/screen_profil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PriceCalculationModel(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Lokasani',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashScreenDelay(),
          '/login': (context) => const LoginPage(),
          '/home': (context) => const MyHomePage(),
          '/event': (context) => const HomeScreenEvent(),
          '/product': (context) => const ListProductPage(),
          // '/detail/product': (context) => const NewDetailProduct(),
          '/chatbot': (context) => const ChatbotScreen(),
          '/profile': (context) => const ProfilPage(),
          '/splashscreen': (context) => const SplashScreen(),
        },
      ),
    );
  }
}

class SplashScreenDelay extends StatefulWidget {
  const SplashScreenDelay({super.key});

  @override
  State<SplashScreenDelay> createState() => _SplashScreenDelayState();
}

class _SplashScreenDelayState extends State<SplashScreenDelay> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => OnboardScreen(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const SplashScreen();
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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
