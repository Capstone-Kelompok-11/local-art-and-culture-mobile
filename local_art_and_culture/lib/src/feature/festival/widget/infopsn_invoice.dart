import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfopsnInvoice extends StatelessWidget {
  const InfopsnInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 331,
      height: 238,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Info Pesanan',
                style: GoogleFonts.plusJakartaSans(
                  color: Color(0xFF1A1A1A),
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
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
                  ),
                ),
                Text(
                  "Jumlah",
                  style: GoogleFonts.plusJakartaSans(
                    color: Color(0xFF162146),
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Harga",
                  style: GoogleFonts.plusJakartaSans(
                    color: Color(0xFF162146),
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Container(
              width: 283,
              height: 38,
              color: const Color(0xFFEBEEF9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 1,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Jak-japan Matsuri 2023 \nDay 1 ',
                              style: GoogleFonts.plusJakartaSans(
                                color: Color(0xFF3653B0),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: '(Reguler)',
                              style: GoogleFonts.plusJakartaSans(
                                color: Color(0xFF3653B0),
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 1,
                  ),
                  Text(
                    "x1",
                    style: GoogleFonts.plusJakartaSans(
                      color: Color(0xFF3653B0),
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Rp.120.000",
                    style: GoogleFonts.plusJakartaSans(
                      color: Color(0xFF3653B0),
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: 1,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
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
                      SizedBox(
                        width: 1,
                      ),
                      Text(
                        "Merch Mug Jak",
                        style: GoogleFonts.plusJakartaSans(
                          color: Color(0xFF3653B0),
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 34,
                  ),
                  Text(
                    "x1",
                    style: GoogleFonts.plusJakartaSans(
                      color: Color(0xFF3653B0),
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Rp.55.000",
                    style: GoogleFonts.plusJakartaSans(
                      color: Color(0xFF3653B0),
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: 1,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
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
                      SizedBox(
                        width: 1,
                      ),
                      Text(
                        "Merch Masker",
                        style: GoogleFonts.plusJakartaSans(
                          color: Color(0xFF3653B0),
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "x1",
                    style: GoogleFonts.plusJakartaSans(
                      color: Color(0xFF3653B0),
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Rp 120.000",
                    style: GoogleFonts.plusJakartaSans(
                      color: Color(0xFF3653B0),
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: 1,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Total Pembayaran',
                style: GoogleFonts.plusJakartaSans(
                  color: Color(0xFF162146),
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'Rp 208.000',
                style: GoogleFonts.plusJakartaSans(
                  color: Color(0xFF162146),
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
