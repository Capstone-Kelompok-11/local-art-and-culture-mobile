import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_art_and_culture/src/feature/festival/widget/switchbutton.dart';

class FormDp extends StatefulWidget {
  const FormDp({super.key});

  @override
  State<FormDp> createState() => _FormDpState();
}

class _FormDpState extends State<FormDp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 394,
      height: 440,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Text(
                "Info Pengunjung",
                style: GoogleFonts.plusJakartaSans(
                  color: Color(0xFF0C1226),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const TextFields(text: "Nama Lengkap *"),
          const TextFields(text: "Nomor Handphone *"),
          const TextFields(text: "Alamat Email *"),
          const TextFields(text: "No KTP *"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Tambahkan sebagai Pengunjung',
                style: GoogleFonts.plusJakartaSans(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SwitchButton(),
            ],
          )
        ],
      ),
    );
  }
}

class TextFields extends StatelessWidget {
  final String text;
  const TextFields({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: GoogleFonts.plusJakartaSans(
              color: Color(0xFF666666),
              fontSize: 12,
              fontWeight: FontWeight.w400,
              height: 0.12,
            ),
          ),
          const SizedBox(
            height: 9,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: Colors.grey[200], // Warna abu-abu
            ),
            child: TextFormField(
              decoration: InputDecoration(
                hintStyle: GoogleFonts.plusJakartaSans(
                    color: Colors.grey), // Warna teks hint
                border: InputBorder.none, // Hilangkan border bawaan
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 1.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
