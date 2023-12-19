import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoPengunjung extends StatefulWidget {
  const InfoPengunjung({super.key});

  @override
  State<InfoPengunjung> createState() => _InfoPengunjungState();
}

class _InfoPengunjungState extends State<InfoPengunjung> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 331,
      height: 161,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        children: [
          Row(
            children: [
              Row(
                children: [
                  Text(
                    'Info Pengunjung',
                    style: GoogleFonts.plusJakartaSans(
                      color: Color(0xFF1A1A1A),
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Nama Lengkap',
                  style: GoogleFonts.plusJakartaSans(
                    color: Color(0xFF333333),
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Nomor Handphone',
                  style: GoogleFonts.plusJakartaSans(
                    color: Color(0xFF333333),
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Athira',
                  style: GoogleFonts.plusJakartaSans(
                    color: Color(0xFF828282),
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    height: 0.15,
                  ),
                ),
                Text(
                  '08555667788',
                  style: GoogleFonts.plusJakartaSans(
                    color: Color(0xFF828282),
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    height: 0.15,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Email',
                  style: GoogleFonts.plusJakartaSans(
                    color: Color(0xFF333333),
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Nomor KTP',
                  style: GoogleFonts.plusJakartaSans(
                    color: Color(0xFF333333),
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Athira.Athira@gmail.com',
                  style: GoogleFonts.plusJakartaSans(
                    color: Color(0xFF828282),
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '6252311000',
                  style: GoogleFonts.plusJakartaSans(
                    color: Color(0xFF828282),
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
