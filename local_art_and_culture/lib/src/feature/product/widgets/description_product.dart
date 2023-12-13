import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DescriptionProducts extends StatefulWidget {
  const DescriptionProducts({super.key});

  @override
  State<DescriptionProducts> createState() => _DescriptionProductsState();
}

class _DescriptionProductsState extends State<DescriptionProducts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Deskripsi Produk',
                    style: GoogleFonts.plusJakartaSans(
                        fontSize: 18, fontWeight: FontWeight.w700)),
                const SizedBox(height: 8),
                Text(
                  'Dengan Mutiara Khas Bali, kamu tidak hanya mendapatkan perhiasan, tetapi juga mengenakan potongan seni yang menggambarkan warisan dan...',
                  style: GoogleFonts.plusJakartaSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff666666)),
                ),
                const SizedBox(height: 8),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return SingleChildScrollView(
                          child: Container(
                            height: 650,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25.0),
                                topRight: Radius.circular(25.0),
                              ),
                            ),
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: const Icon(
                                        Icons.clear_sharp,
                                        size: 24,
                                      ),
                                    ),
                                    Text(
                                      'Deskripsi Produk',
                                      style: GoogleFonts.plusJakartaSans(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  'Dengan Mutiara Khas Bali, Anda tidak hanya mendapatkan perhiasan, tetapi juga mengenakan potongan seni yang menggambarkan warisan dan keindahan alam Pulau Dewata. Hadirkan kilau eksklusif ini dalam setiap momen Anda, dan rasakan keunggulan produk kami yang melebihi harapan.',
                                  style: GoogleFonts.plusJakartaSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff666666),
                                  ),
                                ),
                                const SizedBox(height: 30),
                                Text(
                                  'Alasan membeli produk kami:\n'
                                  '- Mutiara asli berkualitas tinggi\n'
                                  '- Desain tradisional Bali yang elegan\n'
                                  '- Karya tangan yang terampil\n'
                                  '- Kemasan mewah\n'
                                  '- Ketahanan dan keabadian',
                                  style: GoogleFonts.plusJakartaSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff666666),
                                  ),
                                ),
                                const SizedBox(height: 30),
                                Text(
                                  'Spesifikasi:\n'
                                  '- Bahan: Alloy\n'
                                  '- Ukuran Gelang: 40x5 cm\n'
                                  '- Kategori: Karya Tangan',
                                  style: GoogleFonts.plusJakartaSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff666666),
                                  ),
                                ),
                                const SizedBox(height: 30),
                                Text(
                                  'Isi Set: Sepasang Anting Mutiara Khas Bali dan Gelang Mutiara Khas Bali',
                                  style: GoogleFonts.plusJakartaSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff666666),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Text(
                    'Baca Selengkapnya',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff637DCF),
                    ),
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
