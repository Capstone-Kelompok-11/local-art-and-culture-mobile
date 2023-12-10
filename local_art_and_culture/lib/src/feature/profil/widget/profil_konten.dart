import 'package:flutter/material.dart';
import 'package:local_art_and_culture/src/feature/chatbot/bantuan_screen.dart';
import 'package:local_art_and_culture/src/feature/profil/screen/history_page.dart';
import 'package:local_art_and_culture/src/feature/profil/screen/wishlist_page.dart';

class KontenSection extends StatefulWidget {
  const KontenSection({super.key});

  @override
  State<KontenSection> createState() => _KontenSectionState();
}

class _KontenSectionState extends State<KontenSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: 345,
            child: Text(
              'Konten',
              style: TextStyle(
                color: Color(0xFF3653B0),
                fontSize: 18,
                fontFamily: 'Plus Jakarta Sans',
                fontWeight: FontWeight.w700,
                height: 0.08,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              const Icon(Icons.favorite, color: Color(0xFF3653B0)),
              const SizedBox(width: 16),
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WishlistPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'Wishlist',
                    style: TextStyle(
                      color: Color(0xFF4C4C4C),
                      fontSize: 14,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Container(
                width: 25,
                height: 30,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(),
                child: Stack(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WishlistPage(),
                          ),
                        );
                      },
                      icon: const Icon(Icons.keyboard_arrow_right),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.shopping_cart, color: Color(0xFF3653B0)),
              const SizedBox(width: 16),
              const Expanded(
                  child: Text(
                'Riwayat Pembalian',
                style: TextStyle(
                  color: Color(0xFF4C4C4C),
                  fontSize: 14,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w400,
                ),
              )),
              Container(
                width: 25,
                height: 30,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(),
                child: Stack(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HistoryOrderPage()),
                            (route) => false);
                      },
                      icon: const Icon(Icons.keyboard_arrow_right),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.support_agent, color: Color(0xFF3653B0)),
              const SizedBox(width: 16),
              const Expanded(
                child: Text(
                  'Bantuan',
                  style: TextStyle(
                    color: Color(0xFF4C4C4C),
                    fontSize: 14,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                width: 25,
                height: 30,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(),
                child: Stack(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BantuanScreen(),
                          ),
                        );
                      },
                      icon: const Icon(Icons.keyboard_arrow_right),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
