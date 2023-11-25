import 'package:flutter/material.dart';
import 'package:local_art_and_culture/components/search_bar.dart';
import 'package:local_art_and_culture/src/feature/product/widgets/button_filter.dart';
import 'package:local_art_and_culture/src/feature/product/widgets/card_product.dart';

class ListProductPage extends StatefulWidget {
  const ListProductPage({Key? key}) : super(key: key);

  @override
  State<ListProductPage> createState() => _ListProductPageState();
}

class _ListProductPageState extends State<ListProductPage> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 10,
            ),
            SearchHeader(),
            SizedBox(width: 10),
            SizedBox(height: 20),
            ButtonFilter(),
            CardProducts()
          ],
        ),
      ),
    );
  }
}
