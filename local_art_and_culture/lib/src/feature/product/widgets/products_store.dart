import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductStore extends StatefulWidget {
  const ProductStore({super.key});

  @override
  State<ProductStore> createState() => _ProductStoreState();
}

class _ProductStoreState extends State<ProductStore> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: const Image(
                image: AssetImage('lib/assets/logo-store.jpg'),
                width: 40,
                height: 40,
              ),
            ),
            const SizedBox(width: 17),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Handmade Indonesia',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                    )),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Color(0xff666666),
                      size: 17.0,
                    ),
                    const SizedBox(width: 4.0),
                    Text('Jogjakarta',
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff666666),
                        )),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
