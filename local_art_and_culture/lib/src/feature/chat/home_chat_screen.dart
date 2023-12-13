import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_art_and_culture/src/feature/chat/componen/search_bar.dart';
import 'package:local_art_and_culture/src/feature/chat/detail_chat_screen.dart';
import '../chat/model/model_chat.dart';

class HomeChatScreen extends StatefulWidget {
  @override
  _HomeChatScreenState createState() => _HomeChatScreenState();
}

class _HomeChatScreenState extends State<HomeChatScreen> {
  List<Chat> chats = [
    Chat("Tumi Batik", "Hihihi, ditunggu ya kak orderannyaa",
        "assets/icons/tumibatik.png", "1", true),
    Chat("Beyour", "Promo diskon untuk mu, hanya hari ini l...",
        "assets/icons/beyours.png", "3", false),
    Chat("Bateeq", "Bisa kak, mau warna apa?", "assets/icons/bateeq.png", "1",
        false),
    Chat("GG Store.id", "Ayo checkout keranjang mu sekarang",
        "assets/icons/gg.png", "1", false),
    Chat("Blow", "Bisa kok kak", "assets/icons/blow.png", "1", false),
  ];

  int currentIndex = 0;

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
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16),
            child: SearchHeader(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 0;
                  });
                },
                child: Column(
                  children: [
                    Text('Semua'),
                    if (currentIndex == 0)
                      Container(
                        width: 42,
                        height: 2,
                        color: Color(0xff3653B0),
                      ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 1;
                  });
                },
                child: Column(
                  children: [
                    Text('Sudah Dibaca'),
                    if (currentIndex == 1)
                      Container(
                        width: 85,
                        height: 2,
                        color: Color(0xff3653B0),
                      ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 2;
                  });
                },
                child: Column(
                  children: [
                    Text('Belum Dibaca'),
                    if (currentIndex == 2)
                      Container(
                        width: 85,
                        height: 2,
                        color: Color(0xff3653B0),
                      ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: chats.length,
              itemBuilder: (context, index) {
                bool showChat = false;
                if (currentIndex == 0) {
                  showChat = true;
                } else if (currentIndex == 1 && chats[index].isRead) {
                  showChat = true;
                } else if (currentIndex == 2 && !chats[index].isRead) {
                  showChat = true;
                }

                if (showChat) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DetailChatScreen(),
                            ),
                          );
                        },
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 24,
                            backgroundImage: AssetImage(chats[index].image),
                          ),
                          title: Text(
                            chats[index].sender,
                            style: GoogleFonts.plusJakartaSans(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                          ),
                          subtitle: Text(
                            chats[index].message,
                            style: GoogleFonts.plusJakartaSans(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: Color(0xff9999999)),
                          ),
                          trailing: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              if (chats[index].isRead == false)
                                Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff3653B0),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Center(
                                    child: Text(
                                      chats[index].unreadMessageCount,
                                      style: GoogleFonts.plusJakartaSans(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        height: 1,
                        thickness: 1,
                        indent: 36,
                        endIndent: 16,
                      ),
                    ],
                  );
                } else {
                  return SizedBox.shrink(); // Item dihilangkan dari tampilan
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
