import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_art_and_culture/components/payment_navigation_bar.dart';
import 'package:local_art_and_culture/src/feature/product/widgets/customers_adress.dart';
import 'package:local_art_and_culture/src/feature/product/widgets/payment_detail.dart';
import 'package:local_art_and_culture/src/feature/product/widgets/products_order.dart';
import 'package:local_art_and_culture/src/feature/product/widgets/shipping_option.dart';

class CheckoutProductPage extends StatefulWidget {
  const CheckoutProductPage({Key? key}) : super(key: key);

  @override
  State<CheckoutProductPage> createState() => _CheckoutProductPageState();
}

class _CheckoutProductPageState extends State<CheckoutProductPage> {
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
          children: const [
            CustomerAddress(),
            SizedBox(height: 10),
            ProductsOrder(),
            SizedBox(height: 10),
            ShippingOptions(),
            PaymentDetail(),
            SizedBox(height: 10),
            PaymentNavigationBar()
          ],
        ),
      ),
    );
  }
}
