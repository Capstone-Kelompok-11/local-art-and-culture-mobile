import 'package:flutter/material.dart';

import 'package:local_art_and_culture/src/feature/event/screen/detail_festival.dart';

class AppBarPT extends StatefulWidget {
  const AppBarPT({super.key});

  @override
  State<AppBarPT> createState() => _AppBarPTState();
}

class _AppBarPTState extends State<AppBarPT> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      padding: const EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const SizedBox(
                width: 24,
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => const DetailFestival()),
                      (route) => false);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  size: 24,
                ),
              ),
              const SizedBox(
                width: 78,
              ),
              const Text(
                "Pilihan Tiket",
                style: TextStyle(
                  color: Color(0xFF1A1A1A),
                  fontSize: 20,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w600,
                  height: 0.07,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
