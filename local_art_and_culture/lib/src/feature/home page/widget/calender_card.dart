// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final String date;
  final String eventTitle;
  final String eventDescription;
  final String imagePath;

  EventCard({
    required this.date,
    required this.eventTitle,
    required this.eventDescription,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 345,
      height: 262,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 251,
            height: 31,
            child: Text(
              date,
              style: TextStyle(
                color: Colors.black.withOpacity(0.2),
                fontSize: 16,
                fontFamily: 'Plus Jakarta Sans',
                fontWeight: FontWeight.w600,
                height: 0.09,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Container(
            width: 345,
            height: 223,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0),
                  Colors.black,
                ],
              ),
            ),
            padding: const EdgeInsets.fromLTRB(16, 143, 16, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 100,
                      height: 20,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color(0xFF339980),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        'Event',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 60,
                      height: 20,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color(0xFFEBEEF9),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        'Berbayar',
                        style: TextStyle(
                          color: Color(0xFF768DD5),
                          fontSize: 10,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  eventTitle,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'From IDR 70K |',
                      style: TextStyle(
                        color: Color(0xFFB3B3B3),
                        fontSize: 12,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(width: 1),
                    const Icon(Icons.location_on),
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(),
                      child: const Stack(
                        children: [],
                      ),
                    ),
                    const SizedBox(width: 1),
                    const Text(
                      'Edwin’s Gallery',
                      style: TextStyle(
                        color: Color(0xFFB3B3B3),
                        fontSize: 12,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
