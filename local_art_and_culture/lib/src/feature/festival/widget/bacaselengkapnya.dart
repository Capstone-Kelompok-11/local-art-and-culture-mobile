import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void BacaSelengkapnya(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white, // Ubah latar belakang menjadi putih
        elevation: 8, // Atur elevasi untuk efek shadow
        title: const Text('Deskripsi'),
        content: SingleChildScrollView(
          child: Text(
            "Jak-Japan Matsuri adalah wadah pertukaran\nyang bertujuan untuk memperdalam saling\npemahaman antara warga Jepang dan\nIndonesia. ",
            style: GoogleFonts.plusJakartaSans(
              color: const Color(0xFF666666),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Untuk menutup dialog
            },
            child: const Text('Close'),
          ),
        ],
      );
    },
  );
}
