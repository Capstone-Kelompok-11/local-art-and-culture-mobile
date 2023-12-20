import 'package:flutter/material.dart';
import 'package:local_art_and_culture/src/feature/pameran/screen/detail_pembelian.dart';
import 'package:local_art_and_culture/src/feature/pameran/widget/appbarpt.dart';
import 'package:local_art_and_culture/src/feature/pameran/widget/cardtp.dart';
import 'package:local_art_and_culture/src/feature/pameran/widget/tiketpilihan.dart';

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
              height: 3,
            ),
            TiketPilihan(
              imagePath: "assets/img/Pameran2.png",
              title: "Museum Macan (Voice Against \nReason)",
              date: "Senin - Jumat",
              harga: "50.000",
              //category: 'Regular Day2',
            ),
            TiketPilihan(
              imagePath: "assets/img/Pameran2.png",
              title: "Museum Macan (Voice Against \nReason)",
              date: "Senin - Jumat",
              harga: "79.000",
              //category: 'Regular Day2',
            ),
            Row(
              children: [
                SizedBox(
                  width: 37,
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
              child: Padding(
                padding: EdgeInsets.all(
                    30.0), // Sesuaikan dengan jumlah padding yang diinginkan
                child: Row(
                  children: [
                    CardTP(
                      imagePath: "assets/img/Merch1.png",
                      title: "Bloom",
                      harga: "170.000",
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CardTP(
                      imagePath: "assets/img/Merch2.png",
                      title: "Medioker",
                      harga: "200.000",
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 0.90, 
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.all(30.0),
                child: Row(
                  children: [
                    CardTP(
                        imagePath: "assets/img/Merch3.png",
                        title: "Poster",
                        harga: "150.000"),
                    SizedBox(
                      width: 20,
                    ),
                    CardTP(
                        imagePath: "assets/img/Merch4.png",
                        title: "Medioker",
                        harga: "200.000")
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 36,
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
                  width: 36,
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
                  width: 23,
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
                  'Rp.290.000',
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
                  width: 36,
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
                  width: 30,
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
                  width: 170,
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
                  width: 28,
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
                  width: 130,
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
                  width: 28,
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
                  width: 115,
                ),
                Text(
                  'Rp.293.000',
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
