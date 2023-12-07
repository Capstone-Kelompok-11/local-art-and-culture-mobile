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
          "Invoice",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 8),
              Container(
                width: 270,
                height: 476,
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "assets/images/Approved.png",
                      width: 150,
                      height: 100,
                      
                    ),
                    SizedBox(height: 1), 
                    const Text(
                      textAlign: TextAlign.center,
                      "Terima Kasih !",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 25, 90, 143)
                        
                        
                      ),
                    ),
                    const Text(
                      textAlign: TextAlign.center,
                      "Pembayaran Kamu berhasil!!",
                      style: TextStyle(
                        fontSize: 13,
                        
                        color: Color.fromARGB(255, 173, 175, 177)
                        
                        
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
