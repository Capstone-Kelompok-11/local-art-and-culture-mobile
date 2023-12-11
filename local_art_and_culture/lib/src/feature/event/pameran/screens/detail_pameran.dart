import 'package:flutter/material.dart';
import 'package:local_art_and_culture/src/feature/event/pameran/screens/checkout.dart';

class DetailScreen extends StatefulWidget {
  final pameran;
  const DetailScreen({super.key, required this.pameran});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int currentNumber = 1;

  // Tambahkan list data merchandise untuk GridView
  List<Map<String, dynamic>> merchandiseData = [
    {
      "name": "Bloom Totebag",
      "price": "Rp 170.000",
      "image": "assets/Merch1.png"
    },
    {"name": "Medioker", "price": "Rp 200.000", "image": "assets/Merch2.png"},
    {
      "name": "Poster By Terater",
      "price": "Rp 150.000",
      "image": "assets/Merch3.png"
    },
    {
      "name": "Sarung Tali Hutan",
      "price": "Rp 475.000",
      "image": "assets/Merch4.png"
    },
    // Tambahkan data merchandise lainnya sesuai kebutuhan
  ];

  void _showMapBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext builder) {
        return Container(
          height: 200,
          color: Colors.white,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Lokasi Museum Macan",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              // ... (Tambahkan widget atau konten lainnya sesuai kebutuhan)
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(''),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.favorite),
                onPressed: () {
                  // Handle favorite button press
                },
              ),
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {
                  // Handle shopping cart button press
                },
              ),
              IconButton(
                icon: const Icon(Icons.message),
                onPressed: () {
                  // Handle message button press
                },
              ),
            ],
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    height: MediaQuery.of(context).size.width - 20,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(widget.pameran.image),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Handle Pameran button press
                          },
                          child: const Text(
                            'Pameran',
                            style: TextStyle(
                              color:
                                  Colors.white, // Atur warna teks menjadi putih
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: const Color.fromARGB(255, 159, 33, 243),
                            minimumSize: const Size(90, 18),
                          ),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            // Handle Berbayar button press
                          },
                          child: const Text('Berbayar'),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 219, 234, 247),
                            minimumSize: const Size(40, 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.pameran.name,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Color.fromARGB(255, 53, 51, 45),
                              size: 25,
                            ),
                            SizedBox(width: 5),
                            Expanded(
                              child: Text(
                                "Museum Macan",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 5, 5, 5),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(width: 5),
                            Expanded(
                              child: Text(
                                "Jalan Perjuagan, Rt,11/Rw.10, Kebon Jeruk",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 143, 129, 129),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(width: 5),
                            Expanded(
                              child: Text(
                                "Menampilkan di Peta",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 40, 91, 184),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 20,
                    color: Colors.grey.shade300,
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Deskripsi",
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "Tentang Museum Macan",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "Voice Against Reason adalah pameran besar \nyang melibatkan 24 perupa dari Australia, \nBangladesh, India, Indonesia, Jepang, \nSingapura, Taiwan, Thailand, dan Vietnam.",
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "Baca Selengkapnya",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                  Divider(
                                    height: 20,
                                  ),
                                  SizedBox(height: 25),
                                  Text(
                                    "Tiket",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.all(16),
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
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
                                width: 83, // Ubah lebar gambar
                                height: 91, // Ubah tinggi gambar
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage(widget.pameran.image),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Tickets Museum Macan WEEKDAY",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Text(
                                      "Rp 50.000",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color:
                                            Color.fromARGB(255, 16, 119, 204),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                        height:
                                            8), // Tambahkan jarak antara teks dan currentNumber
                                    Row(
                                      children: [
                                        IconButton(
                                          icon: const Icon(Icons.remove,
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0)),
                                          onPressed: () {
                                            // Tambahkan logika untuk mengurangi jumlah pembelian
                                          },
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8),
                                          child: Text(
                                            currentNumber.toString(),
                                            style: const TextStyle(
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                        IconButton(
                                          icon: const Icon(Icons.add,
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0)),
                                          onPressed: () {
                                            // Tambahkan logika untuk menambah jumlah pembelian
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(16),
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
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
                                width: 83, // Ubah lebar gambar
                                height: 91, // Ubah tinggi gambar
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage(widget.pameran.image),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Tickets Museum Macan WEEKDAY",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Text(
                                      "Rp 50.000",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color:
                                            Color.fromARGB(255, 16, 119, 204),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                        height:
                                            8), // Tambahkan jarak antara teks dan currentNumber
                                    Row(
                                      children: [
                                        IconButton(
                                          icon: const Icon(Icons.remove,
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0)),
                                          onPressed: () {
                                            // Tambahkan logika untuk mengurangi jumlah pembelian
                                          },
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8),
                                          child: Text(
                                            currentNumber.toString(),
                                            style: const TextStyle(
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                        IconButton(
                                          icon: const Icon(Icons.add,
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0)),
                                          onPressed: () {
                                            // Tambahkan logika untuk menambah jumlah pembelian
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 40),
                        const Text(
                          "Merchandise",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        // Tambahkan GridView.builder di sini
                        GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10.0,
                            mainAxisSpacing: 20.0,
                          ),
                          itemCount: merchandiseData.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              width: 169,
                              height: 240,
                              child: Card(
                                elevation: 5,
                                color: Colors.white,
                                shadowColor: Colors.black,
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 50,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          image: DecorationImage(
                                            image: AssetImage(
                                                merchandiseData[index]
                                                    ["image"]),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              merchandiseData[index]["name"],
                                              style: const TextStyle(
                                                fontSize: 9,
                                              ),
                                            ),
                                            const SizedBox(height: 4),
                                            Text(
                                              merchandiseData[index]["price"],
                                              style: const TextStyle(
                                                fontSize: 9,
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
                          },
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    color: Colors
                        .white, // Atur warna latar belakang untuk bottom navigation
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 44,
                              height: 44,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.black),
                              ),
                              child: IconButton(
                                icon: const Icon(Icons.message),
                                onPressed: () {
                                  // Tambahkan logika untuk menangani aksi ketika ikon pesan diklik
                                },
                              ),
                            ),
                            const SizedBox(width: 16),
                            Container(
                              width: 44,
                              height: 44,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.black),
                              ),
                              child: IconButton(
                                icon: const Icon(Icons.shopping_cart),
                                onPressed: () {
                                  // Tambahkan logika untuk menangani aksi ketika ikon keranjang diklik
                                },
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Tambahkan logika untuk tombol "Beli Tiket"
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      PaymentMethodScreen2()), // Ganti dengan rute yang sesuai
                            );
                          },
                          child: const Text(
                            'Beli Tiket',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void decrement() {
  // Tambahkan logika untuk mengurangi jumlah pembelian
}

void increment() {
  // Tambahkan logika untuk menambah jumlah pembelian
}
