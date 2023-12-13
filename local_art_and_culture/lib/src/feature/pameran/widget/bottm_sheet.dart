import 'package:flutter/material.dart';


class ShowCustomBottomSheetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Denah Acara'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showCustomBottomSheet(context);
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  void _showCustomBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
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
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(width: 3),
              const Text(
                'Denah Acara',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Image.asset(
            'assets/denah.png',
            height: 100,
            width: 300,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 8),
          Container(
            height: 5,
            color: const Color.fromARGB(255, 63, 57, 57),
          ),
          const SizedBox(height: 16),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              color:  Color.fromARGB(255, 15, 95, 160),
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
