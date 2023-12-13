import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TombolFilter extends StatefulWidget {
  const TombolFilter({super.key});

  @override
  State<TombolFilter> createState() => _TombolFilterState();
}

class _TombolFilterState extends State<TombolFilter> {
  List<String> categories = ["Terbaru", "Transaksi", "Promo", "Info"];
  final ScrollController _scrollController = ScrollController();
  String? _selectedCategory;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: MediaQuery.of(context).size.width - 8,
      margin: const EdgeInsets.only(bottom: 10.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        controller: _scrollController,
        children: categories.map((category) {
          bool isPressed = _selectedCategory == category;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  _selectedCategory = isPressed ? null : category;
                });
                // ignore: avoid_print
                print(_selectedCategory);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: isPressed
                    ? const Color(0xff3653B0)
                    : const Color(0xffCCCCCC),
                minimumSize: const Size(60, 0),
              ),
              child: Text(
                category,
                style: GoogleFonts.plusJakartaSans(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
