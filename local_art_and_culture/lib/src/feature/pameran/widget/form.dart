import 'package:flutter/material.dart';
import 'package:local_art_and_culture/src/feature/pameran/widget/switch.dart';

class FormDp extends StatefulWidget {
  const FormDp({super.key});

  @override
  State<FormDp> createState() => _FormDpState();
}

class _FormDpState extends State<FormDp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 394,
      height: 620,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          const Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "Info Pengunjung",
                style: TextStyle(
                  color: Color(0xFF0C1226),
                  fontSize: 20,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const TextFields(text: "Nama Lengkap *"),
          const TextFields(text: "Nomor Handphone *"),
          const TextFields(text: "Alamat Email *"),
          const TextFields(text: "No KTP *"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                'Tambahkan sebagai Pengunjung\t\t\t\t\t\t\t\t\t\t\t\t\t',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SwitchButton(),
            ],
          )
        ],
      ),
    );
  }
}

class TextFields extends StatelessWidget {
  final String text;
  const TextFields({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: const TextStyle(
              color: Color(0xFF666666),
              fontSize: 12,
              fontFamily: 'Plus Jakarta Sans',
              fontWeight: FontWeight.w400,
              height: 0.12,
            ),
          ),
          const SizedBox(
            height: 9,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: Colors.grey[200], // Warna abu-abu
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                hintStyle: TextStyle(color: Colors.grey), // Warna teks hint
                border: InputBorder.none, // Hilangkan border bawaan
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20.0, vertical: 1.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
