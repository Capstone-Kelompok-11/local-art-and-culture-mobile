import 'package:flutter/material.dart';

class CardEvent extends StatelessWidget {
  final String imagePath;
  final String title;
  final String label1;
  final String label2;
  final String date;

  const CardEvent({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.label1,
    required this.label2,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () {
      //   // Navigasi halaman saat card ditekan
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(builder: (context) => NextPage()), // Ganti dengan halaman yang diinginkan
      //   );
      // },
      child: Container(
        width: 201,
        height: 292,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Image.asset(
                imagePath,
                width: 173,
                height: 173,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                _buildLabel(label1, const Color(0xFF243775), 95),
                const SizedBox(width: 8),
                _buildLabel(label2, const Color(0xFF768DD5), 63),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.place,
                  size: 18,
                  color: Colors.grey,
                ),
                Text(
                  ' $date',
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLabel(String labelText, Color color, double maxWidth) {
    return Container(
      constraints: BoxConstraints(maxWidth: maxWidth),
      height: 20,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          labelText,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 10,
            fontFamily: 'Plus Jakarta Sans',
            fontWeight: FontWeight.w500,
            height: 1.0, // Menyesuaikan kembali tinggi baris
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'dart:convert'; // Jika Anda menggunakan JSON

// class CardEvent extends StatelessWidget {
//   const CardEvent({
//     Key? key,
//     required this.futureData, // Future yang berisi data dari API
//   }) : super(key: key);

//   final Future<Map<String, dynamic>> futureData; // Future untuk data dari API

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: futureData,
//       builder: (context, AsyncSnapshot<Map<String, dynamic>> snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return const CircularProgressIndicator();
//         } else if (snapshot.hasError) {
//           return const Text('Error in fetching data');
//         } else {
//           final Map<String, dynamic> data = snapshot.data!;

//           // Ubah sesuai dengan respons dari API
//           final String imagePath = data['imagePath'] ?? '';
//           final String title = data['title'] ?? '';
//           final String label1 = data['label1'] ?? '';
//           final String label2 = data['label2'] ?? '';
//           final String date = data['date'] ?? '';

//           return GestureDetector(
//             onTap: () {
//               // Navigasi ke halaman yang diinginkan
//             },
//             child: Container(
//               width: 201,
//               height: 292,
//               padding: const EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(30.0),
//                 color: Colors.white,
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.5),
//                     spreadRadius: 2,
//                     blurRadius: 5,
//                     offset: const Offset(0, 1),
//                   ),
//                 ],
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   ClipRRect(
//                     borderRadius: BorderRadius.circular(30.0),
//                     child: Image.network(
//                       imagePath,
//                       width: 173,
//                       height: 173,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                   Row(
//                     children: [
//                       _buildLabel(label1, const Color(0xFF243775), 91),
//                       const SizedBox(width: 8),
//                       _buildLabel(label2, const Color(0xFF768DD5), 60),
//                     ],
//                   ),
//                   const SizedBox(height: 8),
//                   Text(
//                     title,
//                     style: const TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(height: 12),
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       const Icon(
//                         Icons.place,
//                         size: 18,
//                         color: Colors.grey,
//                       ),
//                       Text(
//                         ' $date',
//                         style: const TextStyle(
//                           fontSize: 14,
//                           color: Colors.grey,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           );
//         }
//       },
//     );
//   }

//   Widget _buildLabel(String labelText, Color color, double maxWidth) {
//     return Container(
//       constraints: BoxConstraints(maxWidth: maxWidth),
//       height: 20,
//       padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
//       decoration: BoxDecoration(
//         color: color,
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Center(
//         child: Text(
//           labelText,
//           style: const TextStyle(
//             color: Colors.white,
//             fontSize: 10,
//             fontFamily: 'Plus Jakarta Sans',
//             fontWeight: FontWeight.w500,
//             height: 1.0,
//           ),
//         ),
//       ),
//     );
//   }
// }
