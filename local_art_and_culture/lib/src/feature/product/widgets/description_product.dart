import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DescriptionProducts extends StatefulWidget {
  const DescriptionProducts({super.key});

  @override
  State<DescriptionProducts> createState() => _DescriptionProductsState();
}

class _DescriptionProductsState extends State<DescriptionProducts> {
  bool isExpanded = false;

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
                  'Lorem ipsum dolor sit amet consectetur. Amet varius turpis habitasse tempus. Eros eu aliquet enim rutrum etiam venenatis dolor tortor.',
                  style: GoogleFonts.plusJakartaSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff666666)),
                  maxLines: isExpanded ? null : 3,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                InkWell(
                  onTap: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  child: Text(isExpanded ? 'Baca Selengkapnya' : 'Sembunyikan',
                      style: GoogleFonts.plusJakartaSans(
                          color: const Color(0xff637DCF),
                          fontWeight: FontWeight.w600,
                          fontSize: 16)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
