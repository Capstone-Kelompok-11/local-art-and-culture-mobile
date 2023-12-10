import 'package:flutter/material.dart';
import 'package:local_art_and_culture/src/feature/profil/widget/button_tambah_alamat.dart';
import 'package:local_art_and_culture/src/feature/profil/widget/card_alamat.dart';

class AlamatPage extends StatefulWidget {
  const AlamatPage({Key? key}) : super(key: key);

  @override
  State<AlamatPage> createState() => _AlamatPageState();
}

class _AlamatPageState extends State<AlamatPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(),
                        child: Row(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.arrow_back),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        'Daftar Alamat',
                        style: TextStyle(
                          color: Color(0xFF1A1A1A),
                          fontSize: 23,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        width: 24.28,
                        height: 24,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(),
                        child: const Stack(
                          children: [
                            // Isi dengan widget yang diinginkan di dalam Stack kedua
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  AddAddressButton(onPressed: () {}),
                  const SizedBox(height: 24),
                  AddressCard(
                    addressTitle: 'Rumah',
                    addressType: 'Utama',
                    addressOwner: 'Abigael Anjayebew',
                    phoneNumber: '081233456743',
                    address:
                        'Jl. Cimpedak Komplek Griya Mitra Blok F1 Nomor 99 Sumatera Selatan, Palembang',
                    onEditPressed: () {
                      // Aksi yang akan dijalankan saat tombol edit ditekan
                      print('Tombol Edit Ditekan');
                      // Tambahkan navigasi atau logika yang diperlukan di sini
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
