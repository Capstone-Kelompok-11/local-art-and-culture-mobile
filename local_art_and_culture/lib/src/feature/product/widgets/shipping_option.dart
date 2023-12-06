import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShippingOptions extends StatefulWidget {
  const ShippingOptions({Key? key}) : super(key: key);

  @override
  State<ShippingOptions> createState() => _ShippingOptionsState();
}

class _ShippingOptionsState extends State<ShippingOptions> {
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24.0, 16.0, 16.0, 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Opsi Pengiriman',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (BuildContext context) {
                    return Container(
                      height: 280,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: const Icon(
                                    Icons.clear_sharp,
                                    size: 24,
                                  ),
                                ),
                                Text(
                                  'Metode Pengiriman',
                                  style: GoogleFonts.plusJakartaSans(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20.0),
                            buildShippingOption(
                              'Instant 3 Jam (Rp 42.000)',
                              'Estimasi tiba besok, 07:00-15:00 WIB',
                            ),
                            const SizedBox(height: 20.0),
                            buildShippingOption(
                              'Reguler(Rp 8.000 - Rp 12.000)',
                              'Estimasi tiba 1 - 3 Desember',
                            ),
                            const SizedBox(height: 20.0),
                            buildShippingOption(
                              'Ekonomi(Rp 7.000)',
                              'Estimasi tiba 2 - 6 Desember',
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pengiriman Reguler',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          selectedOption ?? 'SiCepat (Rp 12.000)',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Icon(Icons.navigate_next_sharp),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildShippingOption(String title, String subtitle) {
    bool isSelected = selectedOption == title;

    return InkWell(
      onTap: () {
        setState(() {
          selectedOption = title;
        });

        Navigator.pop(context);
      },
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  subtitle,
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff828282),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedOption = isSelected ? null : title;
              });
            },
            child: Icon(
              isSelected ? Icons.check_circle : Icons.circle_outlined,
              color: isSelected ? Colors.blue : null,
            ),
          ),
        ],
      ),
    );
  }
}
