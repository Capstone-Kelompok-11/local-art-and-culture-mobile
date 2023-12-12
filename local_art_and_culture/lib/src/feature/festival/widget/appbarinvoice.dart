import 'package:flutter/material.dart';
import 'package:local_art_and_culture/src/feature/festival/screen/metode_pembayaran.dart';

class AppBarInvoice extends StatefulWidget {
  const AppBarInvoice({super.key});

  @override
  State<AppBarInvoice> createState() => _AppBarInvoiceState();
}

class _AppBarInvoiceState extends State<AppBarInvoice> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      padding: const EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MetodePembayaran()),
                      (route) => false);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  size: 24,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 108,
              ),
              const Text(
                "Invoice",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w600,
                  height: 0.07,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
