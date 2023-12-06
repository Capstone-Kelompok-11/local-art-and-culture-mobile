import 'package:flutter/material.dart';
import 'package:local_art_and_culture/src/feature/profil/screen_edit_profil.dart';

class AccountSection extends StatefulWidget {
  const AccountSection({Key? key}) : super(key: key);

  @override
  _AccountSectionState createState() => _AccountSectionState();
}

class _AccountSectionState extends State<AccountSection> {
  String username = ''; // Variabel untuk menyimpan username
  String email = ''; // Variabel untuk menyimpan email

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: 345,
            child: Text(
              'Akun',
              style: TextStyle(
                color: Color(0xFF3653B0),
                fontSize: 18,
                fontFamily: 'Plus Jakarta Sans',
                fontWeight: FontWeight.w700,
                height: 0.08,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Container(
            child: Row(
              children: [
                const Icon(Icons.lock, color: Color(0xFF3653B0)),
                const SizedBox(width: 16),
                const Expanded(
                  child: Text(
                    'Ubah Password',
                    style: TextStyle(
                      color: Color(0xFF4C4C4C),
                      fontSize: 14,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  width: 25,
                  height: 30,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: Stack(children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.keyboard_arrow_right))
                  ]),
                )
              ],
            ),
          ),
          const SizedBox(height: 8),
          Container(
            child: Row(
              children: [
                const Icon(Icons.person, color: Color(0xFF3653B0)),
                const SizedBox(width: 16),
                const Expanded(
                  child: Text(
                    'Edit Profil',
                    style: TextStyle(
                      color: Color(0xFF4C4C4C),
                      fontSize: 14,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  width: 25,
                  height: 30,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: Stack(children: [
                    // ...
                    IconButton(
                      onPressed: () async {
                        // Navigasi ke halaman EditScreen
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => EditScreen()),
                        );
                      },
                      icon: const Icon(Icons.keyboard_arrow_right),
                    ),

// ...
                  ]),
                )
              ],
            ),
          ),
          const SizedBox(height: 8),
          Container(
            child: Row(
              children: [
                const Icon(Icons.pin_drop, color: Color(0xFF3653B0)),
                const SizedBox(width: 16),
                const Expanded(
                  child: Text(
                    'Alamat Tersimpan',
                    style: TextStyle(
                      color: Color(0xFF4C4C4C),
                      fontSize: 14,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  width: 25,
                  height: 30,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: Stack(children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.keyboard_arrow_right))
                  ]),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
