import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar di dalam card
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage('assets/Pameran2.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 8),

            // Tombol Event dan Berbayar
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Tindakan ketika tombol Event ditekan
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red, // Warna merah
                  ),
                  child: Text('Event'),
                ),
                SizedBox(width: 8), // Spasi antara tombol
                ElevatedButton(
                  onPressed: () {
                    // Tindakan ketika tombol Berbayar ditekan
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue, // Warna biru
                  ),
                  child: Text('Berbayar'),
                ),
              ],
            ),

            SizedBox(height: 8),

            // Teks di dalam card
            Text(
              'Judul Card',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),

            Text(
              'Deskripsi Card',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),

            // Icon panah ke kanan
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: () {
                  // Tindakan ketika icon panah ke kanan ditekan
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Custom Card Example'),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return CustomCard();
        },
      ),
    ),
  ));
}
