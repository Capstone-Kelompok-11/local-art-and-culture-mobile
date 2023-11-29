import 'package:flutter/material.dart';

class CardEvent extends StatelessWidget {
  final String imagePath;
  final String title;
  final String label1;
  final String label2;

  final String date;

  const CardEvent({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.label1,
    required this.label2,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 201,
      height: 292,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 1),
          ),
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
          const SizedBox(height: 10),
          Row(
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 91,
                      height: 19,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 2),
                      decoration: ShapeDecoration(
                        color: const Color(0xFF243775),
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
                            label1,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w500,
                              height: 0.8,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      width: 60,
                      height: 19,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 2),
                      decoration: ShapeDecoration(
                        color: const Color(0xFF768DD5),
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
                            label2,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w500,
                              height: 0.8,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.place,
                size: 18,
                color: Colors.grey,
              ),
              Text(
                ' $date', // Mengganti locationRating dengan date
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
