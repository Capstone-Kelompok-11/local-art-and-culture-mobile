import 'package:flutter/material.dart';

class InvoiceQR extends StatelessWidget {
  const InvoiceQR({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 331,
      height: 299.15,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 24),
      child: Column(
        children: [
          Image.asset("assets/png/qr.png"),
          const SizedBox(
            height: 16,
          ),
          const Center(
            child: Column(
              children: [
                Text(
                  'Tunjukkan QR code kamu di tempat \npengambilan tiket event kamu!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF4C4C4C),
                    fontSize: 12,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}