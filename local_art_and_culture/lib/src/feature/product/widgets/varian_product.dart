import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VarianProductButton extends StatefulWidget {
  const VarianProductButton({Key? key}) : super(key: key);

  @override
  State<VarianProductButton> createState() => _VarianProductButtonState();
}

class _VarianProductButtonState extends State<VarianProductButton> {
  List<String> colorVariant = ["Hitam", "Putih", "Biru", "Hijau", "Jingga"];
  List<String> sizeVariant = ["XS", "S", "M", "L", "XL"];
  String? _selectedColor;
  String? _selectedSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Varian Warna',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 37,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: colorVariant.length,
                itemBuilder: (context, index) {
                  bool isPressed = _selectedColor == colorVariant[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: ElevatedButton(
                      onPressed: isPressed
                          ? null
                          : () {
                              setState(() {
                                _selectedColor = colorVariant[index];
                              });
                              // ignore: avoid_print
                              print(_selectedColor);
                            },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        disabledBackgroundColor:
                            isPressed ? Colors.white : const Color(0xff3653B0),
                        elevation: 0,
                        side: BorderSide(
                          color: isPressed
                              ? const Color(0xff3653B0)
                              : const Color(0xff666666),
                          width: 1.0,
                        ),
                      ),
                      child: Text(
                        colorVariant[index],
                        style: GoogleFonts.plusJakartaSans(
                          color: isPressed
                              ? const Color(0xff3653B0)
                              : const Color(0xff666666),
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Varian Ukuran',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 37,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: sizeVariant.length,
                itemBuilder: (context, index) {
                  bool isPressed = _selectedSize == sizeVariant[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: ElevatedButton(
                      onPressed: isPressed
                          ? null
                          : () {
                              setState(() {
                                _selectedSize = sizeVariant[index];
                              });
                              // ignore: avoid_print
                              print(_selectedSize);
                            },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        disabledBackgroundColor:
                            isPressed ? Colors.white : const Color(0xff3653B0),
                        elevation: 0,
                        side: BorderSide(
                          color: isPressed
                              ? const Color(0xff3653B0)
                              : const Color(0xff666666),
                          width: 1.0,
                        ),
                      ),
                      child: Text(
                        sizeVariant[index],
                        style: GoogleFonts.plusJakartaSans(
                          color: isPressed
                              ? const Color(0xff3653B0)
                              : const Color(0xff666666),
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
