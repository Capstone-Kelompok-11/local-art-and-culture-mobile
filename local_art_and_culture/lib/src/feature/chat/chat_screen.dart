import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:chat_bubbles/bubbles/bubble_normal.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.25),
                spreadRadius: 1,
                blurRadius: 6, // changes position of shadow
              ),
            ],
          ),
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
            title: Row(
              children: [
                SvgPicture.asset(
                  'assets/svg/tumibatik.svg',
                ),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tumi Batik",
                      style: GoogleFonts.plusJakartaSans(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Aktif 20 detik lalu",
                      style: GoogleFonts.plusJakartaSans(
                          color: Color(0xff999999),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: BubbleNormal(
                    text:
                        'Malam kak, mau tanya ini batik cowcowmewon ukuran S restocknya kapan ya kak?',
                    isSender: true,
                    color: Color(0xffC2CDEF),
                    textStyle: GoogleFonts.plusJakartaSans(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                    delivered: true,
                    sent: true,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                BubbleNormal(
                  text:
                      'Halo kak, selamat malam. Untuk batik cowcowmewon ukuran S restocknya besok ya kakk',
                  isSender: false,
                  color: Color(0xffFFFFFF),
                  textStyle: GoogleFonts.plusJakartaSans(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 16,
                ),
                BubbleNormal(
                  text: 'Oalah ok min, gak sabar aku mau checkout:D',
                  isSender: true,
                  color: Color(0xffC2CDEF),
                  textStyle: GoogleFonts.plusJakartaSans(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                  delivered: true,
                  sent: true,
                ),
                SizedBox(
                  height: 16,
                ),
                BubbleNormal(
                  text:
                      'Hihihi, ditunggu ya kak orderannyaa. beli banyak aku kasih diskon deh',
                  isSender: false,
                  color: Color(0xffFFFFFF),
                  textStyle: GoogleFonts.plusJakartaSans(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                height: 56,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.25),
                      spreadRadius: 1,
                      blurRadius: 6, // changes position of shadow
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Container(
                                height: 118,
                                color: Colors.transparent,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xffF2F2F2),
                                  ),
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 16, left: 16),
                                            child: Container(
                                              width: 48,
                                              height: 48,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Center(
                                                child: Image.asset(
                                                  'assets/icons/gambar.png',
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 8, left: 16),
                                            child: Text(
                                              'Galeri',
                                              style:
                                                  GoogleFonts.plusJakartaSans(
                                                      color: Colors.black,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 12,
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 16, left: 16),
                                            child: Container(
                                              width: 48,
                                              height: 48,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Center(
                                                child: Image.asset(
                                                  'assets/icons/kamera.png',
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 8, left: 16),
                                            child: Text(
                                              'Kamera',
                                              style:
                                                  GoogleFonts.plusJakartaSans(
                                                      color: Colors.black,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      child: SvgPicture.asset(
                        'assets/svg/attachment.svg',
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 56,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 6, left: 16),
                        child: TextField(
                          textCapitalization: TextCapitalization.sentences,
                          onSubmitted: (value) {},
                          textInputAction: TextInputAction.send,
                          showCursor: true,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Tulis Pesan...",
                              hintStyle: TextStyle(
                                  color: Color(0xff828282),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400)),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 56,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: const Icon(
                        Icons.send,
                        color: Color(0xff3653B0),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
