import 'package:flutter/material.dart';

class BintangTamu extends StatelessWidget {
  final List<String> bintangTamuList = [
    "assets/png/BT1.png",
    "assets/png/GT.png",
    // Tambahkan gambar lainnya di sini
  ];

  final List<String> namaBintangTamuList = [
    'JKT 48',
    'Weird Genius',
    // Tambahkan nama bintang tamu lainnya di sini
  ];

  final List<String> rulesList = [
    'Penyanyi',
    'Penyanyi',
    // Tambahkan rules untuk bintang tamu lainnya di sini
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 393,
      child: Column(
        children: [
          const Row(
            children: [
              SizedBox(
                width: 29,
              ),
              Text(
                "Bintang Tamu",
                style: TextStyle(
                  color: Color(0xFF0C1226),
                  fontSize: 20,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12), // Spasi antara teks dan gambar
          SizedBox(
            height: 250, // Tinggi area untuk gambar
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: bintangTamuList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        child: Image.asset(
                          bintangTamuList[index],
                          width: 183,
                          height: 183,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            namaBintangTamuList[index],
                            style: const TextStyle(
                              color: Color(0xFF0C1226),
                              fontSize: 16,
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            rulesList[index],
                            style: const TextStyle(
                              color: Color(0xFF0C1226),
                              fontSize: 14,
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 8), // Spasi antara teks dan gambar
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
