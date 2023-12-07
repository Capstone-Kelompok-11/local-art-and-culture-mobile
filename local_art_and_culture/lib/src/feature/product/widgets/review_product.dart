import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReviewProduct extends StatelessWidget {
  const ReviewProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Penilaian Produk',
                        style: GoogleFonts.plusJakartaSans(
                            fontSize: 18, fontWeight: FontWeight.w700)),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(
                          Icons.star_rounded,
                          color: Color(0xfff3b502),
                          size: 17.0,
                        ),
                        const SizedBox(width: 4.0),
                        Text('4.9 ',
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 14, fontWeight: FontWeight.w400)),
                        const SizedBox(width: 5),
                        Text('(60 ulasan)',
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff999999))),
                      ],
                    ),
                  ],
                ),
                GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('Lihat semua',
                        style: GoogleFonts.plusJakartaSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff3653B0))),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: const Image(
                    image: AssetImage('assets/logo-store.jpg'),
                    width: 25,
                    height: 25,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('John Wick',
                          style: GoogleFonts.plusJakartaSans(
                              fontSize: 15, fontWeight: FontWeight.w500)),
                      const SizedBox(height: 5),
                      Row(
                        children: List.generate(
                          4,
                          (index) => const Icon(
                            Icons.star_rounded,
                            color: Color(0xfff3b502),
                            size: 23.0,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text('Ukuran: All Size',
                          style: GoogleFonts.plusJakartaSans(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xffB3B3B3))),
                      const SizedBox(height: 8),
                      Text(
                          'Mantap banget kebayanya, warnanya elegan. Muat juga diaku ukurannya pas sekali. barang sesuai gambar yang tertera',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            height: 21 / 16,
                          )),
                      const SizedBox(height: 8),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: const Image(
                          image: AssetImage('assets/gambar-produk-2.jpg'),
                          width: 90,
                          height: 90,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
