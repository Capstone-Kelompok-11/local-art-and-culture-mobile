import 'package:flutter/material.dart';
import 'package:local_art_and_culture/src/feature/event/pameran/screens/metode_pembayaran.dart';

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
            Expanded(
              flex: 10,
              child: ElevatedButton(
                onPressed: () {
                  // Tambahkan logika untuk membayar sekarang
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PaymentMethodScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 25, 110, 179),
                  foregroundColor: Colors.white,
                ),
                child: const Text(
                  "Bayar Sekarang",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // List Checkout 1
            const CheckoutItem(
              image: "assets/Pameran4.png",
              title: "Tickets Museum Macan",
              price: 150000,
            ),

            // List Checkout 2
            const CheckoutItem(
              image: "assets/Pameran4.png",
              title: "Tickets Museum Macan",
              price: 140000,
            ),

            const SizedBox(height: 20),

            // Rincian Pembayaran
            Container(
              width: 177,
              height: 27,
              child: const Center(
                child: Text(
                  "Rincian Pembayaran",
                  style: TextStyle(
                    color: Color.fromARGB(255, 7, 7, 7),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),
            // Total Pembelian
            const Text(
              "Total Pembelian",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            // Logika Total Pembelian
            // Misalnya, harga item 1 + harga item 2
            const Text(
              "Total Harga: Rp 290.000",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            // Biaya Transaksi
            const Text(
              "Biaya Transaksi",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Biaya Layanan: Rp 1.000"),
                Text("Biaya Jasa Aplikasi: Rp 2.000"),
              ],
            ),

            const SizedBox(height: 20),

            // Total Pembayaran
            const Text(
              "Total Pembayaran",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            // Logika Total Pembayaran
            // Misalnya, total harga + biaya transaksi
            const Text(
              "Rp 293.000",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.blue, // Sesuaikan warna teks
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CheckoutItem extends StatelessWidget {
  final String image;
  final String title;
  final int price;

  const CheckoutItem({
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
          ),
          const SizedBox(width: 8),
          Expanded(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Harga: Rp $price",
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(width: 8),
                  // Tambahkan elemen waktu dan tombol aksi di sini
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Senin - Jumat",
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {
                              // Tambahkan logika untuk menghapus item
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.remove),
                            onPressed: () {
                              // Tambahkan logika untuk mengurangi jumlah produk
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              // Tambahkan logika untuk menambah jumlah produk
                            },
                          ),
                        ],
                      ),
                    ],
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
