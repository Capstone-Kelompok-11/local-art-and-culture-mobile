import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_art_and_culture/models/card_models_fstv.dart';
import 'package:local_art_and_culture/service/festival_service.dart';
import 'package:local_art_and_culture/src/feature/festival/screen/detail_festival.dart';

class RoundedImageCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String harga;
  final String location;

  const RoundedImageCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.harga,
    required this.location,
  }) : super(key: key);
  Future<void> fetchData() async {
    try {
      final cardService = CardService();
      final List<CardModel> cards = await cardService.getHomeScreen();
      // Handle response data
      print(cards);
    } catch (error) {
      // Handle error
      print('Error fetching data: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      width: 345, // Menentukan lebar card

      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color(0x3F999999),
            blurRadius: 8,
            offset: Offset(0, 0),
            spreadRadius: 1,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Image.network(
              imagePath,
              width: 321,
              height: 127,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.all(5.0),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Color(0xFF91A1D3),
                    borderRadius: BorderRadius.circular(20.0)),
                child: Text(
                  "Festival Budaya",
                  style: GoogleFonts.plusJakartaSans(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5.0),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: const Color(0xFFEBEEF9),
                    borderRadius: BorderRadius.circular(20.0)),
                child: Text(
                  "Berbayar",
                  style: GoogleFonts.plusJakartaSans(
                    color: const Color(0xFF768DD5),
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            '$title',
            style: GoogleFonts.plusJakartaSans(
              color: const Color(0xFF1A1A1A),
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 5),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "$harga | ",
                style: GoogleFonts.plusJakartaSans(
                  color: const Color(0xFFB3B3B3),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Icon(
                Icons.location_on,
                size: 10,
                color: Colors.grey,
              ),
              Text(
                // ignore: unnecessary_string_interpolations
                '$location',
                style: GoogleFonts.plusJakartaSans(
                  color: const Color(0xFFB3B3B3),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailFestival()),
                            (route) => false);
                      },
                      icon: SvgPicture.asset("assets/svg/arrow right.svg"),
                    ),
                  ],
                ),
              ),
              // const Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
