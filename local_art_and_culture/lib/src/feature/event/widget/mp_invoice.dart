import 'package:flutter/material.dart';

class InvoiceMP extends StatelessWidget {
  const InvoiceMP({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 331,
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        children: [
          const Row(
            children: [
              Text(
                'Metode Pembayaran',
                style: TextStyle(
                  color: Color(0xFF1A1A1A),
                  fontSize: 18,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w700,
                  height: 0.08,
                ),
              )
            ],
          ),
          SizedBox(
            height: 22,
          ),
          Row(
            children: [
              Image.asset("assets/png/ovo.png"),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'OVO',
                style: TextStyle(
                  color: Color(0xFF1A1A1A),
                  fontSize: 14,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w600,
                  height: 0.11,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
