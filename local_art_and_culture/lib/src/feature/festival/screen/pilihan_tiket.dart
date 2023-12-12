import 'package:flutter/material.dart';
import 'package:local_art_and_culture/src/feature/festival/screen/detail_pembelian.dart';
import 'package:local_art_and_culture/src/feature/festival/screen/metode_pembayaran.dart';
import 'package:local_art_and_culture/src/feature/festival/widget/appbarpt.dart';
import 'package:local_art_and_culture/src/feature/festival/widget/cardtp.dart';

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
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 24,
                ),
                Text(
                  "Total Pembelian",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 3,
                ),
                Text(
                  "Total Harga",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  width: 140,
                ),
                Text(
                  'Rp.205.000',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w600,
                    height: 0.11,
                  ),
                ),
                SizedBox(
                  width: 24,
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
              height: 1,
              thickness: 1,
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              children: [
                SizedBox(
                  width: 24,
                ),
                Text(
                  "Biaya Transaksi",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 16,
                ),
                Text(
                  "Biaya Layanan",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  width: 190,
                ),
                Text(
                  'Rp.1.000',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w600,
                    height: 0.11,
                  ),
                ),
                SizedBox(
                  width: 24,
                ),
              ],
            ),
            SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 14,
                ),
                Text(
                  "Biaya Jasa Aplikasi",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  width: 150,
                ),
                Text(
                  'Rp.2.000',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w600,
                    height: 0.11,
                  ),
                ),
                SizedBox(
                  width: 24,
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
              height: 1,
              thickness: 1,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 16,
                ),
                Text(
                  "Total Pembayaran",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  width: 130,
                ),
                Text(
                  'Rp.208.000',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
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
            children: <Widget>[
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
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
                // ignore: sort_child_properties_last
                child: const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Text(
                    "Selanjutnya",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF3653B0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
