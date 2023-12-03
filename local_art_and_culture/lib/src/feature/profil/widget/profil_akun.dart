import 'package:flutter/material.dart';

class AccountSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 393,
      height: 195,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: double.infinity,
            child: Text(
              'Akun',
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
          buildAccountItem('Ubah Password', const Color(0xFF4C4C4C)),
          const SizedBox(height: 8),
          buildAccountItem('Edit Profil', const Color(0xFF4C4C4C)),
          const SizedBox(height: 8),
          buildAccountItem('Alamat Tersimpan', const Color(0xFF4C4C4C)),
        ],
      ),
    );
  }

  Widget buildAccountItem(String text, Color textColor) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 4),
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 24,
            height: 24,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(),
            child: const Stack(
              children: [
                // Add your icon or content here
              ],
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Container(
              height: 24,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: SizedBox(
                      child: Text(
                        text,
                        style: TextStyle(
                          color: textColor,
                          fontSize: 14,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w400,
                          height: 0.11,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 160),
                  Container(
                    width: 24,
                    height: 24,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(),
                    child: const Stack(
                      children: [
                        // Add your icon or content here
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
