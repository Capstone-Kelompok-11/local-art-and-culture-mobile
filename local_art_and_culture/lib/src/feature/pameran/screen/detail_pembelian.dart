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
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            AppBarDP(),
            TiketDP(
                imagePath: "assets/img/Pameran2.png",
                title: "Museum Macan\n",
                location: "Museum Macan\n",
                date: "Setiap Hari",
                //time: "Setiap Hari"),
            ),
            SizedBox(
              height: 1,
            ),
            FormDp()
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
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
                    "RP.293.000",
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
                      builder: (context) => const MetodePembayaran(),
                    ),
                    (route) => false,
                  );
                },
                child: const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Text(
                    "Checkout",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF3653B0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}