import 'package:flutter/material.dart';
import 'package:local_art_and_culture/src/feature/product/detail_product.dart';
import 'package:local_art_and_culture/src/feature/product/product_page.dart';

void main() {
  runApp(const MyApp());
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
