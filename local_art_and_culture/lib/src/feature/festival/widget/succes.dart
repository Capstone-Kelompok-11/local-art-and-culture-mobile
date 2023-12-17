import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SuccesInvoice extends StatefulWidget {
  const SuccesInvoice({super.key});

  @override
  State<SuccesInvoice> createState() => _SuccesInvoiceState();
}

class _SuccesInvoiceState extends State<SuccesInvoice> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 331,
      height: 218,
      padding: const EdgeInsets.only(
        top: 24,
        left: 24,
        right: 24,
        bottom: 16,
      ),
      child: Column(
        children: [
          Center(
            child: Column(
              children: [
                SvgPicture.asset("assets/svg/success.svg"),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Terima Kasih !",
                  style: GoogleFonts.plusJakartaSans(
                    color: Color(0xFF3653B0),
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Pembayaran Kamu Berhasil",
                  style: GoogleFonts.plusJakartaSans(
                    color: Color(0xFF999999),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Nomor Invoice',
                style: GoogleFonts.plusJakartaSans(
                  color: Color(0xFF162146),
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'Tanggal Transaksi',
                style: GoogleFonts.plusJakartaSans(
                  color: Color(0xFF162146),
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '12345678',
                style: GoogleFonts.plusJakartaSans(
                  color: Color(0xFF3653B0),
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                '12 Desember 2023',
                style: GoogleFonts.plusJakartaSans(
                  color: Color(0xFF3653B0),
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
