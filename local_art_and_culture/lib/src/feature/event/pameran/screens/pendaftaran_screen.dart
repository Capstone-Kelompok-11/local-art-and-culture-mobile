import 'package:flutter/material.dart';
import 'package:local_art_and_culture/src/feature/event/pameran/screens/metode_pembayaran.dart';
import 'package:local_art_and_culture/src/feature/event/pameran/screens/pendaftaran_screen.dart';
import 'package:local_art_and_culture/src/feature/event/pameran/screens/scan.dart';

class PaymentMethodScreen1 extends StatelessWidget {
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
          "Detail Pembelian",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 251, 252, 251),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            const SizedBox(height: 5),
            const Text(
              "Total Pembayaran",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "Rp 293.000",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.blue,
              ),
            ),
            Expanded(
              flex: 10,
              child: Container(
                width: 163,
                height: 44,
                child: ElevatedButton(
                  onPressed: () {
                    // Tambahkan logika untuk membayar sekarang
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QRPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    backgroundColor: Color.fromARGB(255, 10, 78, 133),
                    foregroundColor: Colors.white,
                    fixedSize: const Size(163, 44),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    alignment: Alignment.center,
                    child: const Text(
                      "Checkout",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CheckoutItem(
                image: "assets/Pameran4.png",
                title: "Tickets Museum Macan",
                price: 150000,
              ),
              Container(
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pembelian\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t",
                      style: TextStyle(
                        color: Color.fromARGB(255, 7, 7, 7),
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                    Text(
                      "Harga\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t",
                      style: TextStyle(
                        color: Color.fromARGB(255, 7, 7, 7),
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                    Text(
                      "Jumlah",
                      style: TextStyle(
                        color: Color.fromARGB(255, 7, 7, 7),
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                width: double.infinity,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
              ),
              Container(
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Selasa\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t",
                      style: TextStyle(
                        color: Color.fromARGB(255, 15, 76, 207),
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                    Text(
                      "Rp 50.000\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t",
                      style: TextStyle(
                        color: Color.fromARGB(255, 15, 76, 207),
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                    Text(
                      "x1",
                      style: TextStyle(
                        color: Color.fromARGB(255, 15, 76, 207),
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                width: double.infinity,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: const Color.fromARGB(255, 221, 232, 243),
                ),
              ),
              const SizedBox(height: 3),
              Container(
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Poster BY Teratai\t\t\t\t\t\t\t\t\t\t\t\t",
                      style: TextStyle(
                        color: Color.fromARGB(255, 15, 76, 207),
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                    Text(
                      "Rp 150.000\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t",
                      style: TextStyle(
                        color: Color.fromARGB(255, 15, 76, 207),
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                    Text(
                      "x1",
                      style: TextStyle(
                        color: Color.fromARGB(255, 15, 76, 207),
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                width: double.infinity,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: const Color.fromARGB(255, 221, 232, 243),
                ),
              ),
              const Divider(
                color: Color.fromARGB(255, 241, 236, 236), // Warna garis
                thickness: 6, // Ketebalan garis
                height: 25, // Jarak vertikal dari atas dan bawah garis
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), 
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Info Pengunjung",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 2),
                    TextFormField(
                      decoration: InputDecoration(labelText: "Nama Lengkap*", helperText: "",),
                      style: const TextStyle(),
                    ),
                    TextFormField(
                      decoration:
                          const InputDecoration(labelText: "Nomor Handphone*", helperText: "",),
                      style: const TextStyle(),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(labelText: "Alamat Email*", helperText: "",),
                      style: const TextStyle(),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(labelText: "No KTP*", helperText: "",),
                      style: const TextStyle(),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: "Tambahkan Sebagai Penunjung*", helperText: "Pilih opsi 'Ya' atau 'Tidak'",),
                      style: const TextStyle(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CheckoutItem extends StatelessWidget {
  final String image;
  final String title;
  final int price;
  int quantity = 1; // Jumlah produk, dapat disesuaikan dengan kebutuhan

  CheckoutItem({
    required this.image,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 103,
      margin: const EdgeInsets.only(top: 15),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 86,
            height: 71,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.center,
              child: Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Museum Macan",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 16, // Adjust the size as needed
                      color: Colors.grey, // Use the desired color
                    ),
                    const SizedBox(width: 4), // Adjust the spacing
                    Text(
                      "Museum Macan",
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.calculate,
                      size: 16, // Adjust the size as needed
                      color: Colors.grey, // Use the desired color
                    ),
                    const SizedBox(width: 4), // Adjust the spacing
                    Text(
                      "Setiap Hari",
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
