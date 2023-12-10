import 'package:flutter/material.dart';
import 'package:local_art_and_culture/src/feature/pameran/screen/metode_pembayaran.dart';
import 'package:local_art_and_culture/src/feature/pameran/widget/appbardp.dart';
import 'package:local_art_and_culture/src/feature/pameran/widget/form.dart';
import 'package:local_art_and_culture/src/feature/pameran/widget/tiket_dp.dart';


class DetailPembelian extends StatefulWidget {
  const DetailPembelian({super.key});

  @override
  State<DetailPembelian> createState() => _DetailPembelianState();
}

class _DetailPembelianState extends State<DetailPembelian> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
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
                              builder: (context) => const MetodePembayaran()),
                          (route) => false);
                    },
                    child: Text(
                      "Checkout",
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