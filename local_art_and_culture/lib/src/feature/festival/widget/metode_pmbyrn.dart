import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MetodePM extends StatefulWidget {
  const MetodePM({super.key});

  @override
  State<MetodePM> createState() => _MetodePMState();
}

class _MetodePMState extends State<MetodePM> {
  String? _selectedOption;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 393,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "Pilih Metode Pembayaran",
                style: GoogleFonts.plusJakartaSans(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          PaymentList(
            title: 'Dompet Digital',
            options: [
              Payment(name: 'OVO', image: 'ovo.png'),
              Payment(name: "Shopeepay", image: "shopeepay.png"),
              Payment(name: "GoPay", image: "gopay.png"),
            ],
            selectedOption: _selectedOption,
            onChanged: (String? newValue) {
              setState(() {
                _selectedOption = newValue;
              });
            },
          ),
        ],
      ),
    );
  }
}

class PaymentList extends StatelessWidget {
  final String title;
  final List<Payment> options;
  final String? selectedOption;
  final Function(String?) onChanged;

  const PaymentList({
    required this.title,
    required this.options,
    required this.selectedOption,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
              width: 37,
            ),
            Text(
              title,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        Column(
          children: options.map((option) {
            return InkWell(
              onTap: () {
                onChanged(option.name);
              },
              child: Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                  color: selectedOption == option.name
                      ? Colors.blue.withOpacity(0.1)
                      : Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/png/${option.image}",
                          width: 40,
                          height: 40,
                        ),
                        SizedBox(width: 8),
                        Text(option.name),
                      ],
                    ),
                    Radio<String>(
                      value: option.name,
                      groupValue: selectedOption,
                      onChanged: onChanged,
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

class Payment {
  final String name;
  final String image;

  const Payment({required this.name, required this.image});
}
