import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_art_and_culture/src/feature/festival/screen/metode_pembayaran.dart';
import 'package:local_art_and_culture/src/feature/festival/widget/appbardp.dart';
import 'package:local_art_and_culture/src/feature/festival/widget/form.dart';
import 'package:local_art_and_culture/src/feature/festival/widget/tiket_dp.dart';

class DetailPembelian extends StatefulWidget {
  const DetailPembelian({super.key});

  @override
  State<DetailPembelian> createState() => _DetailPembelianState();
}

class _DetailPembelianState extends State<DetailPembelian> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            AppBarDP(),
            TiketDP(
                imagePath: "assets/png/gambar dp.png",
                title: "Jak-japan Matsuri 2023 Day 1",
                location: "Gambir Expo - Jiexpo Kemayoran",
                date: "18 - 19 Nov 2023",
                time: "09:30 - 20.30 WIB"),
            SizedBox(
              height: 8,
            ),
            FormDp()
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
            children: <Widget>[
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
                      builder: (context) => const MetodePembayaran(),
                    ),
                    (route) => false,
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF3653B0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: Text(
                    "Checkout",
                    style: GoogleFonts.plusJakartaSans(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
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
