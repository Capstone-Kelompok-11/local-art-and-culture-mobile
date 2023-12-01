import 'package:flutter/material.dart';
import 'package:local_art_and_culture/src/feature/event/pameran/screens/scan.dart';


class PaymentMethodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Metode Pembayaran",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Pilih metode pembayaran",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            PaymentOptionCard(
              title: "Dompet digital",
              options: [
                PaymentOption(name: "OVO", image: "ovo.png"),
                PaymentOption(name: "Shopeepay", image: "spay.png"),
                PaymentOption(name: "Dopay", image: "gopay.jpeg"),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              "Total yang dibayar: \$100.00", // Ganti dengan nilai yang sesuai
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk membayar
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QRPage()), // Ganti dengan rute yang sesuai
                );
              },
              child: Text(
                "Bayar Sekarang",
                style: const TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentOptionCard extends StatefulWidget {
  final String title;
  final List<PaymentOption> options;

  const PaymentOptionCard({required this.title, required this.options});

  @override
  _PaymentOptionCardState createState() => _PaymentOptionCardState();
}

class _PaymentOptionCardState extends State<PaymentOptionCard> {
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        Column(
          children: widget.options.map((option) {
            return InkWell(
              onTap: () {
                setState(() {
                  selectedOption = option.name;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                  color: selectedOption == option.name
                      ? Colors.blue.withOpacity(0.1)
                      : Colors.white,
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/${option.image}",
                          width: 40,
                          height: 40,
                        ),
                        const SizedBox(width: 8),
                        Text(option.name),
                      ],
                    ),
                    Radio<String>(
                      value: option.name,
                      groupValue: selectedOption,
                      onChanged: (String? value) {
                        setState(() {
                          selectedOption = value;
                        });
                      },
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

class PaymentOption {
  final String name;
  final String image;

  PaymentOption({required this.name, required this.image});
}
