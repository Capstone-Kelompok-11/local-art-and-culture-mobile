import 'package:flutter/material.dart';
import 'package:local_art_and_culture/src/feature/article/ui/article_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Mendefinisikan dan menjalankan aplikasi Flutter
    return MaterialApp(
      // Menetapkan halaman awal aplikasi sebagai ArticleList
      home: const ArticleList(),
      
      // Menetapkan tema aplikasi
      theme: ThemeData(
        useMaterial3: false,
      ),
      
      // Menyembunyikan banner debug pada mode debug
      debugShowCheckedModeBanner: false,
    );
  }
}
