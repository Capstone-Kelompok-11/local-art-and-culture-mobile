import 'package:flutter/material.dart';
import 'package:local_art_and_culture/models/payment_model.dart';
import 'package:local_art_and_culture/src/feature/home%20page/src/screen_home_page.dart';
import 'package:local_art_and_culture/src/feature/product/screens/detail_product.dart';
import 'package:local_art_and_culture/src/feature/product/screens/product_page.dart';
import 'package:local_art_and_culture/src/feature/splash%20login/splashscreen.dart';
import 'package:local_art_and_culture/src/feature/chatbot/chatbot_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PaymentModel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lokasani',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const MyHomePage(),
        '/product': (context) => const ListProductPage(),
        '/detail/product': (context) => const DetailProduct(),
        '/chatbot': (context) => const ChatbotScreen(),
      },
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
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
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
                  'lib/assets/logo.png',
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
