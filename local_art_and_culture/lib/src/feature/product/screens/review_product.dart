// ignore_for_file: use_full_hex_values_for_flutter_colors
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_art_and_culture/src/feature/product/widgets/review_product_person.dart';

class ReviewProductPage extends StatefulWidget {
  const ReviewProductPage({Key? key}) : super(key: key);

  @override
  State<ReviewProductPage> createState() => _ReviewProductPageState();
}

class _ReviewProductPageState extends State<ReviewProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff6e8e8e8),
      appBar: AppBar(
        title: Text(
          'Checkout',
          style: GoogleFonts.plusJakartaSans(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Container(
                height: 40,
                color: Colors.white,
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Icon(
                        Icons.star_rate_rounded,
                        color: Color(0xfff3b502),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text('4.9',
                        style: GoogleFonts.plusJakartaSans(
                            fontSize: 18, fontWeight: FontWeight.w700)),
                    Text('/5.0',
                        style: GoogleFonts.plusJakartaSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff999999))),
                    const SizedBox(width: 210),
                    Text('(60 Ulasan)',
                        style: GoogleFonts.plusJakartaSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff999999)))
                  ],
                ));
          } else {
            return const Column(
              children: [
                SizedBox(height: 8),
                ReviewProductByPerson(),
              ],
            );
          }
        },
      ),
    );
  }
}
