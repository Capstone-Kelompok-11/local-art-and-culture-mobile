import 'package:flutter/material.dart';

class InvoiceMP extends StatelessWidget {
  const InvoiceMP({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 331,
      height: 123,
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
            height: 20,
          ),
          Row(
  children: [
    Container(
      width: 50, // Atur lebar sesuai kebutuhan Anda
      height: 50, // Atur tinggi sesuai kebutuhan Anda
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0), // Atur radius sesuai kebutuhan Anda
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
      child: Image.asset(
        "assets/img/ovo.png",
        fit: BoxFit.cover, // Sesuaikan dengan kebutuhan Anda
      ),
    ),),
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
)

        ],
      ),
    );
  }
}