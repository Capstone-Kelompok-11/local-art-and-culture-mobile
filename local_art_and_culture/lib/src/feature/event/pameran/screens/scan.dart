import 'package:flutter/material.dart';

class QRPage extends StatelessWidget {
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
          textAlign: TextAlign.center,
          "Invoice",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 178, 204, 226),
      ),
      body: Container(
        color: const Color.fromARGB(255, 178, 204, 226),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 8),
                Container(
                  width: 270,
                  height: 900,
                  margin: const EdgeInsets.only(top: 8),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white, // Set container color to white
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.blue, // Set background color to blue
                        blurRadius: 1.0,
                        spreadRadius: 0.0,
                        offset: Offset(
                          0.0,
                          1.0,
                        ),
                      ),
                    ],
                  ),

                  //padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.green, // Warna background hijau
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Icon(
                          Icons.check,
                          color: Colors.white, // Warna icon putih
                          size: 35, // Ukuran ikon
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        textAlign: TextAlign.center,
                        "Terima Kasih !",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 25, 90, 143)),
                      ),
                      const Text(
                        textAlign: TextAlign.center,
                        "Pembayaran Kamu berhasil!!",
                        style: TextStyle(
                            fontSize: 13,
                            color: Color.fromARGB(255, 173, 175, 177)),
                      ),
                      const SizedBox(height: 1),
                      // Kolom dengan 2 baris dan 2 kolom
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text("Nomor Invoice"),
                              Text("12345678"),
                            ],
                          ),
                          Column(
                            children: [
                              Text("Tanggal Transaksi"),
                              Text("12 Desember 2023"),
                            ],
                          ),
                        ],
                      ),
                      const Divider(
                        color: Color.fromARGB(255, 211, 194, 194),
                        thickness: 1,
                        height: 25,
                        indent: 0.05,
                        endIndent: 20,
                      ),
                      SizedBox(
                        child: Container(
                          width: double.infinity,
                          child: Row(
                            children: [
                              // Image on the left
                              Container(
                                width: 80, // Set the width as needed
                                height: 80, // Set the height as needed
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                    image: AssetImage("assets/Pameran4.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 16), // Add some spacing
                              // Text on the right
                              const Expanded(
                                child: Text(
                                  "Museum Macan\nMuseum Macan\nSetiap Hari",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        textAlign: TextAlign.left,
                        "Info Pengunjung",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 1),
                      // Kolom dengan 2 baris dan 2 kolom
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text("Nama Lengkap"),
                              Text("Email"),
                            ],
                          ),
                          Column(
                            children: [
                              Text("Nomor handphone"),
                              Text("No KTP"),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        "Info Pesanan",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 1),
                      // Kolom dengan 2 baris dan 2 kolom
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text("Nama Lengkap"),
                              Text("Email"),
                            ],
                          ),
                          Column(
                            children: [
                              Text("Nomor handphone"),
                              Text("No KTP"),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        textAlign: TextAlign.left,
                        "Metode Pembayaran",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: double.infinity,
                        child: Row(
                          children: [
                            // Image on the left
                            Container(
                              width: 40, // Set the width as needed
                              height: 40, // Set the height as needed
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(90),
                                image: const DecorationImage(
                                  image: AssetImage("assets/images/ovo.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: 16), // Add some spacing

                            // Text on the right
                            const Expanded(
                              child: Text(
                                "OVO",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        "assets/images/qr.png",
                        width: 150,
                        height: 150,
                      ),
                      const Text(
                        textAlign: TextAlign.center,
                        "Tunjukkan QR code kamu di tempat\npengambilan tiket event kamu!",
                        style: TextStyle(
                            fontSize: 9,
                            color: Color.fromARGB(255, 173, 175, 177)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // Tambahkan logika untuk menyimpan tiket
                  },
                  child: Text(
                    "Lanjut Berbelanja",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 16, 95, 160),
                  ).copyWith(
                    minimumSize:
                        MaterialStateProperty.all(const Size(double.infinity, 45)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
