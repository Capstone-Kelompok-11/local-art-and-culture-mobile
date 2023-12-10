import 'package:flutter/material.dart';
import 'package:local_art_and_culture/src/feature/pameran/screen/invoice.dart';
import 'package:local_art_and_culture/src/feature/pameran/widget/appbarmp.dart';
import 'package:local_art_and_culture/src/feature/pameran/widget/metode_pembayaran.dart';


class MetodePembayaran extends StatefulWidget {
  const MetodePembayaran({super.key});

  @override
  State<MetodePembayaran> createState() => _MetodePembayaranState();
}

class _MetodePembayaranState extends State<MetodePembayaran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SingleChildScrollView(
        child: Column(
          children: [AppBarMP(), MetodePM()],
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
                              builder: (context) => const InvoiceScreen()),
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