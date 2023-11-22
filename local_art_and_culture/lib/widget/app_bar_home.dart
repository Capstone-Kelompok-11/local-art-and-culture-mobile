import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String name;
  final String location;

  const CustomAppBar({
    Key? key,
    required this.name,
    required this.location,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 2,
      leading: const CircleAvatar(
        backgroundImage: AssetImage('assets/foto.jpg'),
        radius:
            1, // Sesuaikan dengan setengah dari width atau height yang diinginkan
        backgroundColor: Colors.transparent, // Hapus jika tidak perlu
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
      actions: [
        IconButton(
          icon: const Icon(
            Icons.notifications,
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
    );
  }
}
