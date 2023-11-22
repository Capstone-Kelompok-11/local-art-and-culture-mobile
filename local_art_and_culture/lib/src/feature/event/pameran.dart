import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tampilan UI Flutter'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              // Search bar
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Cari event',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ],
          ),
          // Kategori event
          Row(
            children: [
              // Workshop
              TextButton(
                onPressed: () {},
                child: Text('Workshop'),
                style: TextButton.styleFrom(
                  primary: Colors.grey,
                ),
              ),
              // Event
              TextButton(
                onPressed: () {},
                child: Text('Event'),
                style: TextButton.styleFrom(
                  primary: Colors.grey,
                ),
              ),
              // Pameran
              TextButton(
                onPressed: () {},
                child: Text('Pameran'),
                style: TextButton.styleFrom(
                  primary: Colors.blue,
                ),
              ),
              // Festival budaya
              TextButton(
                onPressed: () {},
                child: Text('Festival budaya'),
                style: TextButton.styleFrom(
                  primary: Colors.grey,
                ),
              ),
            ],
          ),
          // ListView
          ListView(
            children: [
              // Gambar pameran
              Container(
                width: MediaQuery.of(context).size.width,
                height: 262,
                margin: EdgeInsets.only(top: 182, left: 24),
                child: Image.asset('assets/images/pameran.jpg'),
              ),
              // Judul pameran
              Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                color: Colors.blue,
                child: Center(
                  child: Text('Pameran'),
                ),
              ),
              // Detail pameran
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: Column(
                  children: [
                    // Nama galeri
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Orasis Art Gallery'),
                      ],
                    ),
                    // Harga
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('From IDR 10k'),
                      ],
                    ),
                    // Lokasi
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.map),
                        Text('Orasis Art Gallery'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
