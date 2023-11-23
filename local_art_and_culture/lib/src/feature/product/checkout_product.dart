import 'package:flutter/material.dart';

class CheckoutProductPage extends StatefulWidget {
  const CheckoutProductPage({super.key});

  @override
  State<CheckoutProductPage> createState() => _CheckoutProductPageState();
}

class _CheckoutProductPageState extends State<CheckoutProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: const [Text('Checkout Page')],
        ),
      ),
    );
  }
}
