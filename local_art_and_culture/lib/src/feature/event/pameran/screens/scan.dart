import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QRPage(),
    );
  }
}

class QRPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black, ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("QR KAMOE",style: TextStyle(
            color: Colors.black,
          ),),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Tiket Anda sudah siap",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "1 Tiket dan 1 Souvenir",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 8),
              Container(
                width: 270,
                height: 476,
                margin: EdgeInsets.only(top: 8, left: 56),
                padding: EdgeInsets.fromLTRB(28, 0, 29, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "assets/images/lokasani.svg",
                      width: 150,
                      height: 150,
                    ),
                    Text(
                      "Scan QR Code dengan QR Code Scanner",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Image.asset(
                      "assets/images/qr.png",
                      width: 150,
                      height: 150,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Tambahkan logika untuk menyimpan tiket
                },
                child: Text("Simpan Tiket", style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
