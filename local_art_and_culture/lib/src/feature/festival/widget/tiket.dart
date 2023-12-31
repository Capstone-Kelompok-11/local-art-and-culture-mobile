import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tiket extends StatelessWidget {
  final String imagePath;
  final String title;
  final String date;
  final String category;
  final String harga;

  const Tiket({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.category,
    required this.date,
    required this.harga,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 394,
      height: 272,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "Tiket",
                style: GoogleFonts.plusJakartaSans(
                  color: Color(0xFF0C1226),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    bottom: 0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        imagePath,
                        width: 83,
                        height: 91,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 100), // Adjust the left padding as needed
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "$title",
                          style: GoogleFonts.plusJakartaSans(
                            color: Color(0xFF1A1A1A),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Row(
                          children: [
                            Image.asset("assets/png/label_important.png"),
                            Text(
                              "$category",
                              style: GoogleFonts.plusJakartaSans(
                                color: Color(0xFF999999),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset("assets/png/access_alarm1.png"),
                            Text(
                              "$date",
                              style: GoogleFonts.plusJakartaSans(
                                color: Color(0xFF999999),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Rp.$harga",
                              style: GoogleFonts.plusJakartaSans(
                                color: Color(0xFF3653B0),
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
