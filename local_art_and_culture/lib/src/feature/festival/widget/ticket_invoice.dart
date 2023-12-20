import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TiketInvoice extends StatelessWidget {
  final String imagePath;
  final String title;
  final String location;
  final String date;

  const TiketInvoice({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.location,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        width: 331,
        height: 144,
        padding: const EdgeInsets.all(12),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            Container(
              child: Row(
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
                            width: 105,
                            height: 112,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 116), // Adjust the left padding as needed
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
                                SvgPicture.asset("assets/svg/location.svg"),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "$location",
                                  style: GoogleFonts.plusJakartaSans(
                                    color: Color(0xFF828282),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                    "assets/svg/calendar-range.svg"),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "$date",
                                  style: GoogleFonts.plusJakartaSans(
                                    color: Color(0xFF828282),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
