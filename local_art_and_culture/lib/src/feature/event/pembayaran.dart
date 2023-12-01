import 'package:flutter/material.dart';

class PembayaranScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Metode Pembayaran"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 24, top: 106),
        child: Container(
          width: (203),
          height: (306),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          child: Column(
            children: [
              // Label Detail Pembeli
              Text(
                "Detail Pembeli",
                style: TextStyle(
                  fontSize: 18,
                  
                  //textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: (16)),

              // TextFormField
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Nama Lengkap",
                ),
              ),
              SizedBox(height: (16)),

              TextFormField(
                decoration: InputDecoration(
                  labelText: "Tanggal Lahir",
                ),
              ),
              SizedBox(height: (16)),

              TextFormField(
                decoration: InputDecoration(
                  labelText: "Nomor Telepon",
                ),
              ),
              SizedBox(height: (16)),

              TextFormField(
                decoration: InputDecoration(
                  labelText: "Jenis Kelamin",
                ),
              ),
              SizedBox(height: (16)),

              TextFormField(
                decoration: InputDecoration(
                  labelText: "Alamat Email",
                ),
              ),
              SizedBox(height: (16)),

              TextFormField(
                decoration: InputDecoration(
                  labelText: "Nomor KTP",
                ),
              ),
              SizedBox(height: (16)),

              // Button Selanjutnya
              ElevatedButton(
                onPressed: () {
                  // TODO: Lanjut ke halaman metode pembayaran
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  textStyle: TextStyle(color: Colors.white),
                ),
                child: Text("Selanjutnya"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
