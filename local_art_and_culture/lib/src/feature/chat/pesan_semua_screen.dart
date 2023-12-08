import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:local_art_and_culture/src/feature/chat/chat_screen.dart';
import 'package:local_art_and_culture/src/feature/chat/componen/list_tile_chat.dart';
import 'package:local_art_and_culture/src/feature/chat/pesan_unreply_screen.dart';
import 'package:local_art_and_culture/src/feature/chat/pesan_unseen_screen.dart';
import '../chat/componen/search_bar.dart';

class PesanSemuaScreen extends StatelessWidget {
  const PesanSemuaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Pesan',
            style: GoogleFonts.plusJakartaSans(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.edit,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
        child: Column(
          children: [
            SearchHeader(),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Semua',
                      style: GoogleFonts.plusJakartaSans(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      width: 100,
                      height: 2,
                      decoration: const BoxDecoration(
                        color: Color(0xff3653B0),
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PesanUnseenScreen(),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      Text(
                        'Belum Dibaca',
                        style: GoogleFonts.plusJakartaSans(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PesanUnreplyScreen(),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      Text(
                        'Belum Dibalas',
                        style: GoogleFonts.plusJakartaSans(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        width: 100,
                        height: 2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
                child: ListView(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChatScreen(),
                      ),
                    );
                  },
                  child: ListTileChat(
                    name: 'Tumi Batik',
                    image: 'assets/icons/tumibatik.png',
                    message: 'Hihihi, ditunggu ya kak ord...',
                    time: '00.00',
                    isMessageRead: true,
                    unreadMessageCount: 2,
                  ),
                ),
                ListTileChat(
                  name: 'Beyours',
                  image: 'assets/icons/beyours.png',
                  message: 'Promo diskon untukmu hanya',
                  time: 'Selasa',
                  isMessageRead: false,
                  unreadMessageCount: 3,
                ),
                ListTileChat(
                  name: 'Bateeq',
                  image: 'assets/icons/bateeq.png',
                  message: 'Bisa kak, mau warna apa?',
                  time: 'Jumat',
                  isMessageRead: false,
                  unreadMessageCount: 1,
                ),
                ListTileChat(
                  name: 'GG Store.id',
                  image: 'assets/icons/gg.png',
                  message: 'Ayo checkout keranjang mu',
                  time: 'Selasa',
                  isMessageRead: false,
                  unreadMessageCount: 1,
                ),
                ListTileChat(
                  name: 'Blow',
                  image: 'assets/icons/blow.png',
                  message: 'Bisa kok kak',
                  time: 'Selasa',
                  isMessageRead: false,
                  unreadMessageCount: 1,
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
