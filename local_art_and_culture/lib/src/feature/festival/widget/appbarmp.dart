import 'package:flutter/material.dart';
import 'package:local_art_and_culture/src/feature/festival/screen/detail_pembelian.dart';

class AppBarMP extends StatefulWidget {
  const AppBarMP({super.key});

  @override
  State<AppBarMP> createState() => _AppBarMPState();
}

class _AppBarMPState extends State<AppBarMP> {
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
                          builder: (context) => const DetailPembelian()),
                      (route) => false);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  size: 24,
                ),
              ),
              const SizedBox(
                width: 60,
              ),
              const Text(
                "Metode Pembayaran",
                style: TextStyle(
                  color: Color(0xFF1A1A1A),
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
