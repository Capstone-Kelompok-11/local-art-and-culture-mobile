import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "Workshop",
    "Event",
    "Pameran",
    "Festival Budaya",
    "Fashion",
    "Handmade",
    "3D"
  ];

  int selectedIndex =
      -1; // Indeks kategori yang terpilih, -1 jika tidak ada yang terpilih

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 26.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategoryButton(index),
      ),
    );
  }

  Widget buildCategoryButton(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              selectedIndex = index; // Mengubah indeks kategori yang terpilih
            });
            // Lakukan aksi yang sesuai dengan kategori tertentu di sini
            // Contoh: Navigasi ke halaman khusus untuk kategori tertentu
            print('Tombol untuk kategori ${categories[index]} ditekan.');
          },
          style: ElevatedButton.styleFrom(
            primary:
                selectedIndex == index ? Color(0xFF3653B0) : Color(0xFFCCCCCC),
            // Warna latar belakang ketika dipilih dan tidak dipilih
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Text(
            categories[index],
            style: GoogleFonts.plusJakartaSans(
              color: selectedIndex == index ? Colors.white : Colors.white,
              // Warna teks ketika dipilih dan tidak dipilih
            ),
          ),
        ),
      ),
    );
  }
}
