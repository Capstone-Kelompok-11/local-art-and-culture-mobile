import 'package:flutter/material.dart';

class RoundedImageCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String locationRating;
  final double starRating;

  const RoundedImageCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.locationRating,
    required this.starRating,
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
          const SizedBox(height: 16),
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
          const SizedBox(height: 10),
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
              const Spacer(),
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
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
