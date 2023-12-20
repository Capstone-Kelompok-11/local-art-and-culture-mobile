import 'package:flutter/material.dart';
import 'package:local_art_and_culture/src/feature/event/screen/detail_pembelian.dart';
import 'package:local_art_and_culture/src/feature/event/widget/appbarpt.dart';
import 'package:local_art_and_culture/src/feature/event/widget/rincian_pembayaran.dart';

import 'package:local_art_and_culture/src/feature/event/widget/tiketpilihan.dart';

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
              imagePath: "assets/img/event/realitytiket.png",
              title: "Alkafest 2023 - Closing Ceremony",
              date: "13 Januari 2023",
              harga: "79.000",
              category: 'VIP',
            ),
            Row(
              children: [
                SizedBox(
                  width: 44,
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
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
                    "Rp. 82.000",
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
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF3653B0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
