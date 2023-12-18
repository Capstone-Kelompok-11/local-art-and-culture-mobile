import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          Row(
            children: [
              Text(
                'Metode Pembayaran',
                style: GoogleFonts.plusJakartaSans(
                  color: Color(0xFF1A1A1A),
                  fontSize: 18,
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
              Text(
                'OVO',
                style: GoogleFonts.plusJakartaSans(
                  color: Color(0xFF1A1A1A),
                  fontSize: 14,
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
