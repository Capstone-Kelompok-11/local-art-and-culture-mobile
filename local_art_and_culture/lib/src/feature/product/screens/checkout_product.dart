import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_art_and_culture/components/payment_navigation_bar.dart';
import 'package:local_art_and_culture/models/product_model.dart';
import 'package:local_art_and_culture/src/feature/product/widgets/customers_adress.dart';
import 'package:local_art_and_culture/src/feature/product/widgets/payment_detail.dart';
import 'package:local_art_and_culture/src/feature/product/widgets/products_order.dart';
import 'package:local_art_and_culture/src/feature/product/widgets/shipping_option.dart';

class CheckoutProductPage extends StatefulWidget {
  final ModelProduct product;
  final String imagePath;
  final int index;

  const CheckoutProductPage({
    Key? key,
    required this.product,
    required this.imagePath,
    required this.index,
  }) : super(key: key);

  @override
  State<CheckoutProductPage> createState() => _CheckoutProductPageState();
}

class _CheckoutProductPageState extends State<CheckoutProductPage> {
  get quantity => 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      appBar: AppBar(
        title: Text(
          'Checkout',
          style: GoogleFonts.plusJakartaSans(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          children: [
            const CustomerAddress(),
            const SizedBox(height: 10),
            ProductsOrder(
              product: widget.product,
              imagePath: widget.imagePath,
              index: widget.index,
            ),
            const SizedBox(height: 10),
            const ShippingOptions(),
            const PaymentDetail(),
            const SizedBox(height: 10),
            const PaymentNavigationBar()
          ],
        ),
      ),
    );
  }
}
