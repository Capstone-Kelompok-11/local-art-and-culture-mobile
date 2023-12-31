import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_art_and_culture/src/feature/festival/screen/detail_pembelian.dart';
import 'package:local_art_and_culture/src/feature/festival/widget/appbarpt.dart';
import 'package:local_art_and_culture/src/feature/festival/widget/cardtp.dart';
import 'package:local_art_and_culture/src/feature/festival/widget/rincian_pembayaran.dart';

import 'package:local_art_and_culture/src/feature/festival/widget/tiketpilihan.dart';

class PilihanTiket extends StatefulWidget {
  const PilihanTiket({super.key});

  @override
  State<PilihanTiket> createState() => _PilihanTiketState();
}

class _PilihanTiketState extends State<PilihanTiket> {
  int jumlahTiket = 1;
  int hargaPerTiket = 120000;
  int jumlahmug = 1;
  int hargaperMug = 55000;
  int jumlahMasker = 1;
  int hargaperMasker = 30000;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            AppBarPT(),
            SizedBox(
              height: 16,
            ),
            TiketPilihan(
              imagePath: "assets/png/gambar1_3.png",
              title: "Tickets Jak-japan Matsuri 2023 Day 1",
              date: "18 Nov ‘23, 09:30-20.30 WIB",
              harga: "120.000",
              category: 'Regular Day2',
            ),
            Row(
              children: [
                SizedBox(
                  width: 24,
                ),
                Text(
                  "Marchandise",
                  style: GoogleFonts.plusJakartaSans(
                    color: Color(0xFF0C1226),
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CardTP(
                      imagePath: "assets/png/mug.png",
                      title: "Mug Jak",
                      harga: "55.000"),
                  SizedBox(
                    width: 20,
                  ),
                  CardTP(
                      imagePath: "assets/png/masker.png",
                      title: "Masker",
                      harga: "30.000")
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 24,
                ),
                Text(
                  "Rincian Pembayaran",
                  style: GoogleFonts.plusJakartaSans(
                    color: Color(0xFF0C1226),
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            RincianPembayaran(),
            SizedBox(
              height: 95,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Total Pembayaran",
                    style: GoogleFonts.plusJakartaSans(
                      color: Color(0xFF666666),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "RP.208.000",
                    style: GoogleFonts.plusJakartaSans(
                      color: Color(0xFF3653B0),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DetailPembelian(),
                    ),
                    (route) => false,
                  );
                },
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Text(
                    "Selanjutnya",
                    style: GoogleFonts.plusJakartaSans(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF3653B0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
