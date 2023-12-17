import 'package:flutter/material.dart';
import 'package:local_art_and_culture/src/feature/event/screen/pilihan_tiket.dart';

class BotNavCK extends StatefulWidget {
  const BotNavCK({super.key});

  @override
  State<BotNavCK> createState() => _BotNavCKState();
}

class _BotNavCKState extends State<BotNavCK> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                              builder: (context) => const PilihanTiket()),
                          (route) => false);
                    },
                    child: const Text(
                      "Checkout",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue, // Ubah warna tombol menjadi biru
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
