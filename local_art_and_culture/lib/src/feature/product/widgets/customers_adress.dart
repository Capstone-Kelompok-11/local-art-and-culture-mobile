import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerAddress extends StatefulWidget {
  const CustomerAddress({super.key});

  @override
  State<CustomerAddress> createState() => _CustomerAdressState();
}

class _CustomerAdressState extends State<CustomerAddress> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 130,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Alamat Pembeli',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 15),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 3.0),
                  child: const Icon(
                    Icons.location_on,
                    color: Color(0xff323232),
                    size: 24.0,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rumah',
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Jalan Merak Jingga No. 3H',
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Tambah Catatan Alamat',
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff637DCF),
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.navigate_next,
                  color: Color(0xff323232),
                  size: 24.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
