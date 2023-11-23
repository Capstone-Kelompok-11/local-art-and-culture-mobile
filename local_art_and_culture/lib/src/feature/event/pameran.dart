import 'package:flutter/material.dart';

class PameranPage extends StatefulWidget {
  @override
  _PameranPageState createState() => _PameranPageState();
}

class _PameranPageState extends State<PameranPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.0), // Sesuaikan dengan tinggi yang diinginkan
        child: AppBar(
          automaticallyImplyLeading: false, // Hilangkan tombol kembali otomatis
          title: Row(   
            children: [ 
              IconButton(
                icon: Padding(
                  padding: EdgeInsets.only(right: 1.0), // Adjust the left padding as needed
                  child: const Icon(Icons.arrow_back),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              // Search bar
              Expanded(
                child: Container(
                  height: 50,
                  child: const TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      filled: true,
                      fillColor: Color.fromARGB(255, 247, 244, 244),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // IconButton(
              //   icon: const Icon(Icons.wifi_rounded),
              //   onPressed: () {
              //     Navigator.pop(context);
              //   },
              // ),
              SizedBox(width: 10),
              Container(
              margin: EdgeInsets.only(bottom: 3.0),
              decoration: BoxDecoration(
                color: Colors.blue, // Warna latar belakang
                borderRadius: BorderRadius.circular(14.0), // Bordes sudut
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Warna bayangan
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, 2), // Posisi bayangan
                  ),
                ],
              ),
              child: IconButton(
                icon: const Icon(Icons.wifi_rounded),
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Colors.white, // Warna ikon
              ),
            )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          // Kategori event
          Row(
            children: [
              // Workshop
              SizedBox(width: 28),
              Container(
              margin: EdgeInsets.only(bottom: 3.0),
               // Sesuaikan nilai right dengan jarak yang diinginkan
              child: TextButton(
                onPressed: () {},
                child: Text('Workshop'),
                style: TextButton.styleFrom(
                  primary: Color.fromARGB(255, 253, 253, 253),
                  backgroundColor: Color.fromARGB(255, 205, 209, 212),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  padding: EdgeInsets.fromLTRB(4.0, 12.0, 4.0, 12.0),
                ),
              ),
            ),
            SizedBox(width: 25),
            Container(
              margin: EdgeInsets.only(bottom: 3.0),
               // Sesuaikan nilai right dengan jarak yang diinginkan
              child: TextButton(
                onPressed: () {},
                child: Text('Event'),
                style: TextButton.styleFrom(
                  primary: Color.fromARGB(255, 253, 253, 253),
                  backgroundColor: const Color.fromARGB(255, 205, 209, 212),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  padding: EdgeInsets.fromLTRB(4.0, 12.0, 4.0, 12.0),
                ),
              ),
            ),      
            SizedBox(width: 25),
            Container(
              margin: EdgeInsets.only(bottom: 3.0),
               // Sesuaikan nilai right dengan jarak yang diinginkan
              child: TextButton(
                onPressed: () {},
                child: Text('Pameran'),
                style: TextButton.styleFrom(
                  primary: Color.fromARGB(255, 253, 253, 253),
                  backgroundColor: Color.fromARGB(255, 112, 148, 247),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  padding: EdgeInsets.fromLTRB(4.0, 12.0, 4.0, 12.0),
                ),
              ),
            ),
            SizedBox(width: 25),
            Container(
              margin: EdgeInsets.only(bottom: 3.0),
               // Sesuaikan nilai right dengan jarak yang diinginkan
              child: TextButton(
                onPressed: () {},
                child: Text('Festival Budaya'),
                style: TextButton.styleFrom(
                  primary: Color.fromARGB(255, 253, 253, 253),
                  backgroundColor: const Color.fromARGB(255, 205, 209, 212),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  padding: EdgeInsets.fromLTRB(4.0, 12.0, 4.0, 12.0),
                ),
              ),
            ),  
            ],
            
              
          ),
           
        ],
        
          
      ),
    );
  }
}









// import 'package:flutter/material.dart';

// class PameranPage extends StatefulWidget {
//   @override
//   _PameranPageState createState() => _PameranPageState();
// }

// class _PameranPageState extends State<PameranPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(''),
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
        
//       ),
//       body: Column(
//         children: [
//           Row(
//             children: [
//               // Search bar
//               Container(
//                 width: MediaQuery.of(context).size.width * 0.7,
//                 height: 50,
//                 child: const TextField(
//                         decoration: InputDecoration(
//                         prefixIcon:  Icon(Icons.search),
//                         filled: true,
//                         fillColor: Color.fromARGB(255, 247, 244, 244),
//                         border: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(     
//                         Radius.circular(20.0),
//                         ),
//                     ),
//                   ),
//                 ),      
//               ),
//             ],
//           ),
//           // Kategori event
//           Row(
//             children: [
//               // Workshop
//               TextButton(
//                 onPressed: () {},
//                 child: Text('Workshop'),
//                 style: TextButton.styleFrom(
//                   primary: Colors.grey,
//                 ),
//               ),
//               // Event
//               TextButton(
//                 onPressed: () {},
//                 child: Text('Event'),
//                 style: TextButton.styleFrom(
//                   primary: Colors.grey,
//                 ),
//               ),
//               // Pameran
//               TextButton(
//                 onPressed: () {},
//                 child: Text('Pameran'),
//                 style: TextButton.styleFrom(
//                   primary: Colors.blue,
//                 ),
//               ),
//               // Festival budaya
//               TextButton(
//                 onPressed: () {},
//                 child: Text('Festival budaya'),
//                 style: TextButton.styleFrom(
//                   primary: Colors.grey,
//                 ),
//               ),
//             ],
//           ),
//           // ListView
//           Expanded(
//             child: ListView(
//               children: [
//                 // Gambar pameran
//                 Container(
//                   padding: const EdgeInsets.only(left: 15, right: 15),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Container(
//                         margin: const EdgeInsets.only(top: 20),
//                         child: Image.asset(
//                           'assets/Pameran1.png',
//                           width: double.infinity,
//                           height: 214,
//                           fit: BoxFit.fitWidth,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 // Judul pameran
              
//                 // Detail pameran
//                 Container(
//                   width: MediaQuery.of(context).size.width,
//                   height: MediaQuery.of(context).size.height/8,
//                   child: const Column(
//                     children: [
//                       // Nama galeri
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Text('Pameran', style: TextStyle(
//                           color: Color.fromARGB(255, 40, 134, 95),
//                           fontWeight: FontWeight.bold,
//                           fontSize: 15,
//                         ),),
//                         ],
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Text('Orasis Art Gallery', style: TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 20,
//                       ),),
//                         ],
//                       ),
//                       // Harga
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Text('From IDR 10k', style: TextStyle(
//                         color: Colors.grey,
//                         fontSize: 15,
//                       ),), 
//                           Icon(Icons.mode_of_travel_sharp),
//                           Text('Orasis Art Gallery', style: TextStyle(
//                         color: Colors.grey,
//                         fontSize: 15,),)
//                         ],
//                       ),
//                       // Lokasi
//                     ],
//                   ),
//                 ),

                
//                 // Judul pameran
//                 Container(
//                   padding: const EdgeInsets.only(left: 15, right: 15),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Container(
//                         margin: const EdgeInsets.only(top: 20),
//                         child: Image.asset(
//                           'assets/Pameran2.png',
//                           width: double.infinity,
//                           height: 214,
//                           fit: BoxFit.fitWidth,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 // Detail pameran
//                 Container(
//                   width: MediaQuery.of(context).size.width,
//                   height: 60,
//                   child: const Column(
//                     children: [
//                       // Nama galeri
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Text('Pameran', style: TextStyle(
//                           color: Color.fromARGB(255, 40, 134, 95),
//                           fontWeight: FontWeight.bold,
//                           fontSize: 15,
//                         ),),
//                         ],
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Text('Edwin Gallery', style: TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 20,
//                       ),),
//                         ],
//                       ),
//                       // Harga
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Text('From IDR 0', style: TextStyle(
//                         color: Colors.grey,
//                         fontSize: 15,
//                       ),), 
//                           Icon(Icons.mode_of_travel_sharp),
//                           Text('Jl. Kemang Raya, 11, jakarta Selatan', style: TextStyle(
//                         color: Colors.grey,
//                         fontSize: 15,),)
//                         ],
//                       ),
//                       // Lokasi
//                     ],
//                   ),
//                 ),

//                 Container(
//                   padding: const EdgeInsets.only(left: 15, right: 15),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Container(
//                         margin: const EdgeInsets.only(top: 20),
//                         child: Image.asset(
//                           'assets/Pameran3.png',
//                           width: double.infinity,
//                           height: 214,
//                           fit: BoxFit.fitWidth,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 // Judul pameran
//                 Container(
//                   width: MediaQuery.of(context).size.width,
//                   height: 60,
//                   child: const Column(
//                     children: [
//                       // Nama galeri
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Text('Pameran', style: TextStyle(
//                           color: Color.fromARGB(255, 40, 134, 95),
//                           fontWeight: FontWeight.bold,
//                           fontSize: 15,
//                         ),),
//                         ],
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Text('Philo Art Space', style: TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 20,
//                       ),),
//                         ],
//                       ),
//                       // Harga
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Text('From IDR 0', style: TextStyle(
//                         color: Colors.grey,
//                         fontSize: 15,
//                       ),), 
//                           Icon(Icons.mode_of_travel_sharp),
//                           Text('Jl. Kemang Timur No.90C', style: TextStyle(
//                         color: Colors.grey,
//                         fontSize: 15,),)
//                         ],
//                       ),
//                       // Lokasi
//                     ],
//                   ),
//                 ),

//                 // Detail pameran
//                 Container(
//                   padding: const EdgeInsets.only(left: 15, right: 15),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Container(
//                         margin: const EdgeInsets.only(top: 20),
//                         child: Image.asset(
//                           'assets/Pameran4.png',
//                           width: double.infinity,
//                           height: 214,
//                           fit: BoxFit.fitWidth,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 // Judul pameran
//                 Container(
//                   width: MediaQuery.of(context).size.width,
//                   height: 60,
//                   child: const Column(
//                     children: [
//                       // Nama galeri
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Text('Pameran', style: TextStyle(
//                           color: Color.fromARGB(255, 40, 134, 95),
//                           fontWeight: FontWeight.bold,
//                           fontSize: 15,
//                         ),),
//                         ],
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Text('Museum Macan(Voice Againts Reason)', style: TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 20,
//                       ),),
//                         ],
//                       ),
//                       // Harga
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Text('From IDR 50k', style: TextStyle(
//                         color: Colors.grey,
//                         fontSize: 15,
//                       ),), 
//                           Icon(Icons.mode_of_travel_sharp),
//                           Text('Museum Macan', style: TextStyle(
//                         color: Colors.grey,
//                         fontSize: 15,),)
//                         ],
//                       ),
//                       // Lokasi
//                     ],
//                   ),
//                 ),


//                 Container(
//                   padding: const EdgeInsets.only(left: 15, right: 15),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Container(
//                         margin: const EdgeInsets.only(top: 20),
//                         child: Image.asset(
//                           'assets/Pameran5.png',
//                           width: double.infinity,
//                           height: 214,
//                           fit: BoxFit.fitWidth,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 // Judul pameran
//                 Container(
//                   width: MediaQuery.of(context).size.width,
//                   height: 60,
//                   child: const Column(
//                     children: [
//                       // Nama galeri
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Text('Pameran', style: TextStyle(
//                           color: Color.fromARGB(255, 40, 134, 95),
//                           fontWeight: FontWeight.bold,
//                           fontSize: 15,
//                         ),),
//                         ],
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Text('Biasa Art Space Bali', style: TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 20,
//                       ),),
//                         ],
//                       ),
//                       // Harga
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Text('From IDR 10k', style: TextStyle(
//                         color: Colors.grey,
//                         fontSize: 15,
//                       ),), 
//                           Icon(Icons.mode_of_travel_sharp),
//                           Text('Seminyak', style: TextStyle(
//                         color: Colors.grey,
//                         fontSize: 15,),)
//                         ],
//                       ),
//                       // Lokasi
//                     ],
//                   ),
//                 ), 
//               ],      
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
