import 'package:flutter/material.dart';
import 'package:local_art_and_culture/components/checkout_navigation_bar.dart';
import 'package:local_art_and_culture/models/product_model.dart';
import 'package:local_art_and_culture/src/feature/product/widgets/description_product.dart';
import 'package:local_art_and_culture/src/feature/product/widgets/products_store.dart';
import 'package:local_art_and_culture/src/feature/product/widgets/review_product.dart';
import 'package:local_art_and_culture/src/feature/product/widgets/varian_product.dart';

class DetailProduct extends StatefulWidget {
  final ModelProduct product;
  final String imagePath;
  final int index;

  const DetailProduct({
    Key? key,
    required this.product,
    required this.imagePath,
    required this.index,
  }) : super(key: key);

  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  List<String> imagePaths = [
    'assets/img/produk/produk-4.png',
    'assets/img/produk/product-5.png',
    'assets/img/produk/produk-1.png',
    'assets/img/produk/product-6.png',
    'assets/img/produk/product-7.png',
    'assets/img/produk/product-8.png',
    'assets/img/produk/product-9.png',
    'assets/img/produk/product-10.png',
    'assets/img/produk/product-11.png',
    'assets/img/produk/product-12.png'
  ];
  late String imagePath;

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
                  // ProductsImage(),
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
            CheckoutNavigationBar(
                product: widget.product,
                imagePath: imagePath,
                index: widget.index)
          ],
        ),
      ),
    );
  }
}
