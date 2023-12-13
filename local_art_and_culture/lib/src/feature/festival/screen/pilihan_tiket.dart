import 'package:flutter/material.dart';
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
      body: const SingleChildScrollView(
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
                  style: TextStyle(
                    color: Color(0xFF0C1226),
                    fontSize: 20,
                    fontFamily: 'Plus Jakarta Sans',
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
                  style: TextStyle(
                    color: Color(0xFF0C1226),
                    fontSize: 20,
                    fontFamily: 'Plus Jakarta Sans',
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
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, -3),
            ),
          ],
        ),
        child: BottomAppBar(
          color: Colors.white,
          shape: const CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Column(
                children: [
                  Text(
                    "Total Pembayaran",
                    style: TextStyle(
                      color: Color(0xFF666666),
                      fontSize: 12,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "RP.208.000",
                    style: TextStyle(
                      color: Color(0xFF3653B0),
                      fontSize: 20,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 100,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DetailPembelian()),
                          (route) => false);
                    },
                    child: Text(
                      "Selanjutnya",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary:
                          Color(0xFF3653B0), // Ubah warna tombol menjadi biru
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
