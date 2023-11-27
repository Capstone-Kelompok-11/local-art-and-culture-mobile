import 'package:flutter/material.dart';

class RoundedImageCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String locationRating;
  final double starRating;
  final String label;

  const RoundedImageCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.locationRating,
    required this.starRating,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Container(
        width: 200,
        height: 315,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color(0x3F999999),
              blurRadius: 8,
              offset: Offset(0, 0),
              spreadRadius: 1,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.network(
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
                color: const Color(0xFF9EC6BC),
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
            const SizedBox(height: 10),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.location_on,
                    size: 18,
                    color: Colors.grey,
                  ),
                  Text(
                    locationRating,
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
            ),
          ],
        ),
      ),
    );
  }
}
