// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomContainer extends StatelessWidget {
  final String name;
  final String location;

  const CustomContainer({
    Key? key,
    required this.name,
    required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0, // Sesuaikan dengan tinggi yang diinginkan
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/foto.jpg'),
                radius:
                    1, // Sesuaikan dengan setengah dari width atau height yang diinginkan
                backgroundColor: Colors.transparent,
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Hello, $name',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.circle,
                        color: Colors.amber,
                        size: 8,
                      ),
                      Text(
                        ' $location',
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
          Row(
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  'assets/svg/bell-ring.svg',
                  color: Colors.black,
                ),
                onPressed: () {
                  // Aksi ketika ikon notifikasi ditekan
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.chat_rounded,
                  color: Colors.black,
                ),
                onPressed: () {
                  // Aksi ketika ikon chat ditekan
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
                onPressed: () {
                  // Aksi ketika ikon keranjang belanja ditekan
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
