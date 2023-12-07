import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:getwidget/getwidget.dart';
import 'package:local_art_and_culture/src/feature/chatbot/chatbot_screen.dart';
import 'package:local_art_and_culture/src/feature/chatbot/componen/search_bar.dart';

class BantuanScreen extends StatelessWidget {
  const BantuanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.black,
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Bantuan',
            style: GoogleFonts.plusJakartaSans(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 16,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SearchHeader(),
                ),
                SizedBox(
                  height: 32,
                ),
                Text(
                  'FAQ',
                  style: GoogleFonts.plusJakartaSans(
                    color: Color(0xff3653B0),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                GFAccordion(
                  margin: EdgeInsets.only(top: 0),
                  collapsedTitleBackgroundColor: Colors.white,
                  expandedTitleBackgroundColor: Colors.white,
                  contentBackgroundColor: Color(0xffEBEFF9),
                  titleBorder: Border.all(
                    color: Color(0xffE6E6E6),
                  ),
                  contentBorder: Border.all(
                    color: Color(0xffE6E6E6),
                  ),
                  title: 'Apa itu LokaSani?',
                  textStyle: GoogleFonts.plusJakartaSans(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  content:
                      'Lokasani adalah sebuah aplikasi yang mendukung produk dan menyediakan akses yang terhubung dengan event lokal. Pada aplikasi ini kalian bisa purchase produk dan tiket event yang kalian inginkan.',
                ),
                GFAccordion(
                  margin: EdgeInsets.only(top: 0),
                  collapsedTitleBackgroundColor: Colors.white,
                  expandedTitleBackgroundColor: Colors.white,
                  contentBackgroundColor: Color(0xffEBEFF9),
                  titleBorder: Border.all(
                    color: Color(0xffE6E6E6),
                  ),
                  contentBorder: Border.all(
                    color: Color(0xffE6E6E6),
                  ),
                  title: 'Bagaimana cara saya memesan sebuah produk?',
                  textStyle: GoogleFonts.plusJakartaSans(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  content:
                      'Untuk memesan produk di aplikasi Lokasani, cukup cari produk, klik untuk melihat detail dan harga, pilih metode pembayaran dan masukkan detail pengiriman, lalu proses pesanan. Tunggu konfirmasi dari aplikasi Lokasani dan produk akan dikirim sesuai jadwal.\n\nSelamat Mencoba!',
                ),
                GFAccordion(
                  margin: EdgeInsets.only(top: 0),
                  collapsedTitleBackgroundColor: Colors.white,
                  expandedTitleBackgroundColor: Colors.white,
                  contentBackgroundColor: Color(0xffEBEFF9),
                  titleBorder: Border.all(
                    color: Color(0xffE6E6E6),
                  ),
                  contentBorder: Border.all(
                    color: Color(0xffE6E6E6),
                  ),
                  title: 'Bagaimana cara saya memesan sebuah tiket?',
                  textStyle: GoogleFonts.plusJakartaSans(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  content:
                      'Dalam Aplikasi Lokasani, kamu bisa dengan mudah memesan tiket acara favoritmu. Cukup buka aplikasi, temukan acara yang diinginkan, pilih jenis dan jumlah tiket, pilih metode pembayaran, isi informasi pembayaran, dan selesaikan pesanan. Setelahnya, nikmati acara kamu dengan menyimpan atau mencetak tiket yang sudah dikonfirmasi. Proses cepat dan praktis untuk mendapatkan tiket acara di ujung jari Anda!',
                ),
                GFAccordion(
                  margin: EdgeInsets.only(top: 0),
                  collapsedTitleBackgroundColor: Colors.white,
                  expandedTitleBackgroundColor: Colors.white,
                  contentBackgroundColor: Color(0xffEBEFF9),
                  titleBorder: Border.all(
                    color: Color(0xffE6E6E6),
                  ),
                  contentBorder: Border.all(
                    color: Color(0xffE6E6E6),
                  ),
                  title: 'Bagaimana cara mengubah nomor telepon saya?',
                  textStyle: GoogleFonts.plusJakartaSans(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  content:
                      'Jika kamu ingin mengganti nomor telepon, cukup akses pengaturan akun di aplikasi Lokasani. Cari opsi "Ubah Nomor Telepon," lalu masukkan nomor telepon baru. Pastikan untuk verifikasi dengan memasukkan kode yang dikirimkan, akhiri proses dengan menyimpan perubahan.',
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Pusat Kontak',
                  style: GoogleFonts.plusJakartaSans(
                    color: Color(0xff3653B0),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChatbotScreen(),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        child: Center(
                          child: Image.asset(
                            'assets/icons/support.png',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        'Chat dengan LokaSani',
                        style: GoogleFonts.plusJakartaSans(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Container(
                      height: 30,
                      child: Center(
                        child: Image.asset(
                          'assets/icons/email.png',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email',
                          style: GoogleFonts.plusJakartaSans(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Tulis pertanyaanmu sekarang',
                          style: GoogleFonts.plusJakartaSans(
                            color: Color(0xffB3B3B3),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
