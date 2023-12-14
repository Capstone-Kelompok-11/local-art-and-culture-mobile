import 'package:flutter/material.dart';
import 'package:local_art_and_culture/src/feature/festival/screen/home_screen.dart';
import 'package:local_art_and_culture/src/feature/pameran/screen/home_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MyButtons(),
      ),
    );
  }
}

class MyButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345,
      height: 94,
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                // Tambahkan navigasi atau aksi yang diperlukan untuk Fashion di sini
                print('Fashion');
              },
              child: buildButton(
                'Fashion',
                const Color(0xFF3653B0),
                Icons.local_activity,
              ),
            ),
            const SizedBox(width: 28),
            GestureDetector(
              onTap: () async {
                // Navigasi ke halaman EditScreen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreenFstv()),
                );
              },
              child: buildButton(
                  'Festival', const Color(0xFFE8644B), Icons.local_activity),
            ),
            const SizedBox(width: 28),
            GestureDetector(
              onTap: () {
                // Tambahkan navigasi atau aksi yang diperlukan untuk Workshop di sini
                print('Workshop');
              },
              child: buildButton(
                  'Workshop', const Color(0xFFF3B502), Icons.local_activity),
            ),
            const SizedBox(width: 28),
            GestureDetector(
              onTap: () async {
                // Navigasi ke halaman EditScreen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: buildButton(
                  'Pameran', const Color(0xFF026C52), Icons.local_activity),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildButton(String text, Color color, IconData iconData) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: ShapeDecoration(
              color: color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 36,
                  height: 36,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: Icon(
                    iconData,
                    color: Colors.white, // Ubah warna ikon sesuai kebutuhan
                    size: 36, // Ubah ukuran ikon sesuai kebutuhan
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 14),
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFF333333),
              fontSize: 12,
              fontFamily: 'Plus Jakarta Sans',
              fontWeight: FontWeight.w400,
              height: 0.12,
            ),
          ),
        ],
      ),
    );
  }
}
