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
          "Checkout",
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
                      MaterialPageRoute(builder: (context) => PaymentMethodScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Bayar Sekarang", style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),),
                ),
              ),
          
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // List Checkout 1
            CheckoutItem(
              image: "assets/Pameran4.png",
              title: "Tickets Museum Macan",
            ),

            // List Checkout 2
            CheckoutItem(
              image: "assets/Pameran4.png",
              title: "Tickets Museum Macan",
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

  const CheckoutItem({required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 339,
      height: 103,
      margin: const EdgeInsets.only(top: 95, left: 25),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4), // Mengurangi jarak di sini
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {
                            // Tambahkan logika hapus item
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.minimize_rounded),
                          onPressed: () {
                            // Tambahkan logika hapus item
                          },
                        ),
                        const Text("1"), // Jumlah item
                        IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () {
                            // Tambahkan logika tambah item
                          },
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
