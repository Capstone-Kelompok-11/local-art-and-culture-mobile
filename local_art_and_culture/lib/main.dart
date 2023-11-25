import 'package:flutter/material.dart';
import 'package:local_art_and_culture/models/payment_model.dart';
import 'package:local_art_and_culture/src/feature/product/screens/detail_product.dart';
import 'package:local_art_and_culture/src/feature/product/screens/product_page.dart';
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
      title: 'Product',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ListProductPage(),
        '/detail': (context) => const DetailProduct(),
      },
    );
  }
}
