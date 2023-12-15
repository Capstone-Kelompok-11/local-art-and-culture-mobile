import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:local_art_and_culture/src/feature/chat/pesan_semua_screen.dart';
import 'package:local_art_and_culture/src/feature/keranjang/screen/keranjang.dart';
import 'package:local_art_and_culture/src/feature/notif/src/notifikasi.dart';

class CustomContainer extends StatelessWidget {
  final String profileImageUrl;
  final String greetingText;
  final String locationText;

  const CustomContainer({
    Key? key,
    required this.profileImageUrl,
    required this.greetingText,
    required this.locationText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70, // Set your desired height here
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(profileImageUrl),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  greetingText,
                  style: const TextStyle(
                    color: Color(0xFF3653B0),
                    fontSize: 16,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF3B502),
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      locationText,
                      style: const TextStyle(
                        color: Color(0xFF5F5F5F),
                        fontSize: 12,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SliderPage()),
                  );
                },
                icon: SvgPicture.asset('assets/svg/bell-ring.svg'),
                iconSize: 24,
              ),
              const SizedBox(width: 16),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PesanSemuaScreen()),
                  );
                },
                icon: SvgPicture.asset('assets/svg/chat-processing.svg'),
                iconSize: 24,
              ),
              const SizedBox(width: 16),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const KeranjangPage()),
                  );
                },
                icon: SvgPicture.asset('assets/svg/shopping_cart.svg'),
                iconSize: 24,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
