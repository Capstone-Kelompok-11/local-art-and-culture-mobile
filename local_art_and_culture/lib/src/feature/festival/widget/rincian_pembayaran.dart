import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RincianPembayaran extends StatefulWidget {
  const RincianPembayaran({super.key});

  @override
  State<RincianPembayaran> createState() => _RincianPembayaranState();
}

class _RincianPembayaranState extends State<RincianPembayaran> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345,
      height: MediaQuery.of(context).size.height * 0.37,
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Total Pembelian",
                style: GoogleFonts.plusJakartaSans(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total Harga",
                style: GoogleFonts.plusJakartaSans(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                'Rp.79.000',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  height: 0.11,
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey,
            height: 1,
            thickness: 1,
          ),
          SizedBox(
            height: 32,
          ),
          Row(
            children: [
              Text(
                "Biaya Transaksi",
                style: GoogleFonts.plusJakartaSans(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Biaya Layanan",
                style: GoogleFonts.plusJakartaSans(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                'Rp.1.000',
                style: GoogleFonts.plusJakartaSans(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Biaya Jasa Aplikasi",
                style: GoogleFonts.plusJakartaSans(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                'Rp.2.000',
                style: GoogleFonts.plusJakartaSans(
                  color: Colors.black,
                  fontSize: 14,
                  height: 0.11,
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey,
            height: 1,
            thickness: 1,
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total Pembayaran",
                style: GoogleFonts.plusJakartaSans(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'Rp.205.000',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
