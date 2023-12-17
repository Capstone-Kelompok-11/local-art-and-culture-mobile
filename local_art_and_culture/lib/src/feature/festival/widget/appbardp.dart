import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_art_and_culture/src/feature/festival/screen/pilihan_tiket.dart';

class AppBarDP extends StatefulWidget {
  const AppBarDP({super.key});

  @override
  State<AppBarDP> createState() => _AppBarDPState();
}

class _AppBarDPState extends State<AppBarDP> {
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
                width: 24,
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PilihanTiket()),
                      (route) => false);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  size: 24,
                ),
              ),
              const SizedBox(
                width: 78,
              ),
              Text(
                "Detail Pembelian",
                style: GoogleFonts.plusJakartaSans(
                  color: Color(0xFF1A1A1A),
                  fontSize: 20,
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
