import 'package:flutter/material.dart';


class ShowCustomBottomSheetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Denah Acara'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showCustomBottomSheet(context);
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  void _showCustomBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
      ),
      builder: (BuildContext context) {
        return CustomBottomSheetContent();
      },
    );
  }
}

class CustomBottomSheetContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(width: 3),
              Text(
                'Denah Acara',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 8),
          Image.asset(
            'assets/denah.png',
            height: 100,
            width: 300,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 8),
          Container(
            height: 5,
            color: const Color.fromARGB(255, 63, 57, 57),
          ),
          SizedBox(height: 16),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              color: const Color.fromARGB(255, 15, 95, 160),
            ),
            child: ElevatedButton(
              onPressed: () {
                // Fungsi yang dijalankan saat tombol "Selanjutnya" ditekan
              },
              child: Text('Unduh Denah', style: TextStyle(
                color: Colors.white, // Mengatur warna teks menjadi putih
              ),),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(0, 255, 255, 255),
                elevation: 0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
