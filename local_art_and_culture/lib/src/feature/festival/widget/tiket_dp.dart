import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TiketDP extends StatelessWidget {
  final String imagePath;
  final String title;
  final String location;
  final String date;
  final String time;

  const TiketDP({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.location,
    required this.date,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        width: 393,
        height: 288,
        padding: const EdgeInsets.all(12),
        decoration: const BoxDecoration(
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
                  "Info Pesanan",
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
                            width: 108,
                            height: 83,
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
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
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
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                SvgPicture.asset("assets/svg/access_alarm.svg"),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "$time",
                                  style: GoogleFonts.plusJakartaSans(
                                    color: Color(0xFF828282),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                // SizedBox(
                                //   height: 24,
                                //   width: 24,
                                //   child: OutlinedButton(
                                //       onPressed: () {},
                                //       child: Icon(
                                //         Icons.remove,
                                //         color: Colors.black,
                                //       )),
                                // )
                                SizedBox(width: 60),
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
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Pembelian",
                    style: GoogleFonts.plusJakartaSans(
                      color: Color(0xFF162146),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      height: 0.12,
                    ),
                  ),
                  Text(
                    "Harga",
                    style: GoogleFonts.plusJakartaSans(
                      color: Color(0xFF162146),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      height: 0.12,
                    ),
                  ),
                  Text(
                    "Jumlah",
                    style: GoogleFonts.plusJakartaSans(
                      color: Color(0xFF162146),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      height: 0.12,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Container(
                width: 345,
                height: 24,
                color: const Color(0xFFEBEEF9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset("assets/svg/local_activity.svg"),
                        SizedBox(
                          width: 1,
                        ),
                        Text(
                          "RegulerDay1",
                          style: GoogleFonts.plusJakartaSans(
                            color: Color(0xFF3653B0),
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 1,
                    ),
                    Text(
                      "Rp.120.000",
                      style: GoogleFonts.plusJakartaSans(
                        color: Color(0xFF3653B0),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      "x1",
                      style: GoogleFonts.plusJakartaSans(
                        color: Color(0xFF3653B0),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      width: 1,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
