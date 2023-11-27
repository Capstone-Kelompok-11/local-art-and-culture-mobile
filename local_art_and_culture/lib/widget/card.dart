import 'package:flutter/material.dart';

class RoundedImageCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String locationRating;
  final double starRating;
  final String label; // Menambahkan label baru
  final String terjual; // Menambahkan label baru

  const RoundedImageCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.locationRating,
    required this.starRating,
    required this.label, // Menambahkan label sebagai required parameter
    required this.terjual, // Menambahkan label sebagai required parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200, // Menentukan lebar card
      height: 315, // Menentukan tinggi card
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color(0x3F999999),
            blurRadius: 8,
            offset: Offset(0, 0),
            spreadRadius: 1,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Image.asset(
              imagePath,
              width: 173,
              height: 173,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 12),
          Container(
            width: 53,
            height: 19,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: ShapeDecoration(
              color: const Color(0xFFF8D46C),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    color: Color(0xFF1A1A1A),
                    fontSize: 10,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w500,
                    height: 0.15,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          // Menambahkan label yang diwajibkan

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.location_on,
                size: 18,
                color: Colors.grey,
              ),
              Text(
                // ignore: unnecessary_string_interpolations
                '$locationRating',
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(height: 1),
          Row(
            children: [
              const Icon(
                Icons.star,
                color: Colors.amber,
                size: 18,
              ),
              Text(
                ' $starRating',
                style: const TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 83, 83, 82),
                ),
              ),
              const SizedBox(
                  width: 8), // Mengatur jarak antara rating dan terjual
              const Text(
                '|', // Tanda pemisah antara rating dan terjual
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 83, 83, 82),
                ),
              ),
              const SizedBox(
                  width: 8), // Mengatur jarak antara rating dan terjual
              Text(
                // ignore: unnecessary_string_interpolations
                '$terjual', // Ubah sesuai dengan data yang sebenarnya
                style: const TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 83, 83, 82),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
