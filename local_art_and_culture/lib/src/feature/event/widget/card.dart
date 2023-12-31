import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:local_art_and_culture/src/feature/event/screen/detail_festival.dart';

class RoundedImageCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String harga;
  final String location;

  const RoundedImageCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.harga,
    required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
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
              width: 321,
              height: 127,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(5.0),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Color(0xFF339981),
                    borderRadius: BorderRadius.circular(20.0)),
                child: const Text(
                  "Event",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5.0),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Color(0xFFEBEEF9),
                    borderRadius: BorderRadius.circular(20.0)),
                child: const Text(
                  "Berbayar",
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
          const SizedBox(height: 12),
          Text(
            '$title',
            style: const TextStyle(
              color: Color(0xFF1A1A1A),
              fontSize: 14,
              fontFamily: 'Plus Jakarta Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 5),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "$harga | ",
                style: const TextStyle(
                  color: Color(0xFFB3B3B3),
                  fontSize: 12,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Icon(
                Icons.location_on,
                size: 10,
                color: Colors.grey,
              ),
              Text(
                // ignore: unnecessary_string_interpolations
                '$location',
                style: const TextStyle(
                  color: Color(0xFFB3B3B3),
                  fontSize: 12,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Stack(
                children: [
                  SizedBox(
                    width: 60,
                  ),
                ],
              ),
              Expanded(
                child: IconButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailFestival()),
                        (route) => false);
                  },
                  icon: SvgPicture.asset("assets/svg/arrow right.svg"),
                ),
              ),
              // const Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
