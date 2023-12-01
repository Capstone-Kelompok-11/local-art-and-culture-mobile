import 'package:flutter/material.dart';
import 'package:local_art_and_culture/src/feature/event/pameran/screens/checkout.dart';



class PaymentMethodScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.black,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text("Metode Pembayaran", style: TextStyle(
    color: Colors.black,
  ),),
        backgroundColor: Color.fromARGB(255, 248, 248, 248),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const PaymentFormField(label: "Nama Lengkap*"),
            const PaymentFormField(label: "Tanggal Lahir*"),
            const PaymentFormField(label: "Nomor Handphone*"),
            const PaymentFormField(label: "Jenis Kelamin*",),
            const PaymentFormField(label: "Alamat Email*",),
            const PaymentFormField(label: "Nomor KTP*"),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk menangani tombol "Selanjutnya" di sini
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PaymentMethodScreen2()),
                );
              },
              child: Text("Selanjutnya",
                  style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 70, 31, 209)          ),
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentFormField extends StatelessWidget {
  final String label;
  const PaymentFormField({required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
          TextFormField(
            decoration: const InputDecoration(
              
            ),
          ),
        ],
      ),
    );
  }
}
