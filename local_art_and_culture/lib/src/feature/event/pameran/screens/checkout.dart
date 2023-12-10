import 'package:flutter/material.dart';
import 'package:local_art_and_culture/src/feature/event/pameran/screens/pendaftaran_screen.dart';

class PaymentMethodScreen2 extends StatelessWidget {
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
          "Pilihan Tiket",
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
                        builder: (context) => PaymentMethodScreen1(),
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
                      "Selanjutnya",
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
              CheckoutItem(
                image: "assets/Pameran4.png",
                title: "Tickets Museum Macan",
                price: 140000,
              ),
              const SizedBox(height: 1),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rincian Pembayaran",
                      style: TextStyle(
                        color: Color.fromARGB(255, 7, 7, 7),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total Pembelian",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "Total Harga\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t Rp 290.000",
                      style: TextStyle(),
                    ),
                    Divider(
                      color: Colors.grey, // Warna garis
                      thickness: 0.5, // Ketebalan garis
                      height: 3, // Jarak vertikal dari atas dan bawah garis
                    ),
                    SizedBox(height: 14),
                    Text(
                      "Biaya Transaksi",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 2),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            "Biaya Layanan\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t Rp 1.000"),
                        Text(
                            "Biaya Jasa Aplikasi\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t Rp 2.000"),
                      ],
                    ),
                    Divider(
                      color: Colors.grey, // Warna garis
                      thickness: 0.5, // Ketebalan garis
                      height: 3, // Jarak vertikal dari atas dan bawah garis
                    ),
                    SizedBox(height: 14),
                    Text(
                      "Total Pembayaran\t\t\t\t\t\t\t\t\t\t\t\t\t Rp 293.000",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
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

// ignore: must_be_immutable
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
                  "Jak-japan Matsuri 2023 Day1",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 1),
                const Text(
                  "Senin - Jumat",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                ),
                const SizedBox(height: 1),
                Text(
                  "\nHarga: Rp $price",
                  style: const TextStyle(
                      color: Colors.blueAccent, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 5,
                      ),
                      onPressed: () {
                        // Tambahkan logika untuk mengurangi jumlah produk
                        if (quantity > 1) {
                          quantity--;
                        }
                      },
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    // decoration: BoxDecoration(
                    //   color: Colors.blue,
                    //   borderRadius: BorderRadius.circular(20),
                    // ),
                    child: Text(
                      quantity.toString(),
                      style: const TextStyle(
                        color: Color.fromARGB(255, 8, 8, 8),
                      ),
                    ),
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 5,
                      ),
                      onPressed: () {
                        // Tambahkan logika untuk menambah jumlah produk
                        quantity++;
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
