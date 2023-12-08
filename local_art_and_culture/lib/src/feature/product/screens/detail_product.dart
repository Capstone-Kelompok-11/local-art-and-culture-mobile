import 'package:flutter/material.dart';
import 'package:local_art_and_culture/components/checkout_navigation_bar.dart';
import 'package:local_art_and_culture/src/feature/product/widgets/description_product.dart';
import 'package:local_art_and_culture/src/feature/product/widgets/products_image.dart';
import 'package:local_art_and_culture/src/feature/product/widgets/products_store.dart';
import 'package:local_art_and_culture/src/feature/product/widgets/review_product.dart';
import 'package:local_art_and_culture/src/feature/product/widgets/varian_product.dart';

class DetailProduct extends StatefulWidget {
  const DetailProduct({Key? key}) : super(key: key);

  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xffF2F2F2),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: const [
                  ProductsImage(),
                  SizedBox(height: 8),
                  VarianProductButton(),
                  SizedBox(height: 8),
                  ProductStore(),
                  DescriptionProducts(),
                  SizedBox(height: 8),
                  ReviewProduct(),
                ],
              ),
            ),
            const CheckoutNavigationBar()
          ],
        ),
      ),
    );
  }
}
