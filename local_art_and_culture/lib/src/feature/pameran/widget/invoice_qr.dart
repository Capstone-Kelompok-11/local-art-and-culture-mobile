import 'package:flutter/material.dart';

class InvoiceQR extends StatelessWidget {
  const InvoiceQR({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 331,
      height: 299.15,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        children: [
          Container(
            width: 200, // Atur lebar sesuai kebutuhan Anda
            height: 200, // Atur tinggi sesuai kebutuhan Anda
            margin: const EdgeInsets.only(bottom: 3),
            child: Image.asset(
              "assets/img/qr.png",
              fit: BoxFit.cover, // Sesuaikan dengan kebutuhan Anda
            ),
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
          ),
        ],
      ),
    );
  }
}
