import 'package:flutter/material.dart';
import 'package:local_art_and_culture/src/feature/pameran/models/data_pameran.dart';
import 'package:local_art_and_culture/src/feature/pameran/screens/detail_pameran.dart';

class QuickAndFastList extends StatelessWidget {
  const QuickAndFastList({Key? key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            foods.length,
            (index) => GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(pameran: foods[index]),
                ),
              ),
              child: Card(
                margin: const EdgeInsets.only(bottom: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 3,
                //color: Colors.white,
                child: Container(
                  width: MediaQuery.of(context).size.width - 32,
                  //color: Colors.white,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                    color: Colors.white,
                  ),
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 130,
                            margin: const EdgeInsets.only(
                                bottom: 8, top: 10, left: 16, right: 16),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(
                                    10), // Radius circular pada bagian bawah
                                bottomRight: Radius.circular(
                                    10), // Radius circular pada bagian bawah
                              ),
                              image: DecorationImage(
                                image: AssetImage(foods[index].image),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        // Tambahkan tindakan untuk tombol "Event"
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.red,
                                        minimumSize: const Size(44, 19),
                                      ),
                                      child: const Text(
                                        "Pameran",
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.white),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    ElevatedButton(
                                      onPressed: () {
                                        // Tambahkan tindakan untuk tombol "Berbayar"
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.blue,
                                        minimumSize: const Size(44, 19),
                                      ),
                                      child: const Text(
                                        "Berbayar",
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  foods[index].name,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    Text(
                                      "${foods[index].IDR} K From IDR |",
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    const Text(
                                      " · ",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    const Icon(
                                      Icons.location_on,
                                      size: 18,
                                      color: Colors.grey,
                                    ),
                                    Text(
                                      "${foods[index].map} Jl",
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        top: 215,
                        right: 15,
                        child: Center(
                          child: Container(
                            width: 20, // Lebar lingkaran
                            height: 20, // Tinggi lingkaran
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(255, 5, 61,
                                  145), // Warna latar belakang kuning
                            ),
                            child: IconButton(
                              onPressed: () {},
                              padding:
                                  const EdgeInsets.all(0), // Atur padding ikon
                              iconSize: 15,
                              icon: const Icon(
                                Icons.keyboard_arrow_right_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
