import 'package:flutter/material.dart';


class DetailPameran1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
        ),
        actions: [
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.favorite),
                onPressed: () {
                  // Handle favorite button press
                },
              ),
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {
                  // Handle shopping cart button press
                },
              ),
              IconButton(
                icon: const Icon(Icons.message),
                onPressed: () {
                  // Handle message button press
                },
              ),
            ],
          ), 
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Image
          Container(
            margin: const EdgeInsets.only(top: 130),
            child: Image.asset(
              'assets/Pameran1.png', // Ganti dengan path gambar Anda
              width: 393,
              height: 267,
            ),
          ),
          // Layout with information
          Container(
            width: double.infinity,
            height: 80,
            margin: const EdgeInsets.only(top: 8),
            padding: const EdgeInsets.only(left: 26),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.black),
                    SizedBox(width: 8),
                    Text(
                      'Museum Macan',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  'Jalan Perjuangan, RT.11/RW.10, Kebon Jeruk',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 8),
                Text(
                  'Menampilkan di Peta',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
          
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                // Handle favorite button press
              },
            ),
            IconButton(
              icon: const Icon(Icons.calendar_month_sharp),
              onPressed: () {
                // Handle shopping cart button press
              },
            ),
            IconButton(
              icon: const Icon(Icons.storefront_outlined),
              onPressed: () {
                // Handle message button press
              },
            ),
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                // Handle message button press
              },
            ),
          ],
        ),
      ),
    );
  }
}


class DetailPameran2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
        ),
        actions: [
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.favorite),
                onPressed: () {
                  // Handle favorite button press
                },
              ),
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {
                  // Handle shopping cart button press
                },
              ),
              IconButton(
                icon: const Icon(Icons.message),
                onPressed: () {
                  // Handle message button press
                },
              ),
            ],
          ), 
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Image
          Container(
            margin: const EdgeInsets.only(top: 130),
            child: Image.asset(
              'assets/Pameran2.png', // Ganti dengan path gambar Anda
              width: 393,
              height: 267,
            ),
          ),
          // Layout with information
          Container(
            width: double.infinity,
            height: 80,
            margin: const EdgeInsets.only(top: 8),
            padding: const EdgeInsets.only(left: 26),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.black),
                    SizedBox(width: 8),
                    Text(
                      'Museum Macan',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  'Jalan Perjuangan, RT.11/RW.10, Kebon Jeruk',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 8),
                Text(
                  'Menampilkan di Peta',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
          
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                // Handle favorite button press
              },
            ),
            IconButton(
              icon: const Icon(Icons.calendar_month_sharp),
              onPressed: () {
                // Handle shopping cart button press
              },
            ),
            IconButton(
              icon: const Icon(Icons.storefront_outlined),
              onPressed: () {
                // Handle message button press
              },
            ),
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                // Handle message button press
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DetailPameran3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
        ),
        actions: [
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.favorite),
                onPressed: () {
                  // Handle favorite button press
                },
              ),
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {
                  // Handle shopping cart button press
                },
              ),
              IconButton(
                icon: const Icon(Icons.message),
                onPressed: () {
                  // Handle message button press
                },
              ),
            ],
          ), 
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Image
          Container(
            margin: const EdgeInsets.only(top: 130),
            child: Image.asset(
              'assets/Pameran3.png', // Ganti dengan path gambar Anda
              width: 393,
              height: 267,
            ),
          ),
          // Layout with information
          Container(
            width: double.infinity,
            height: 80,
            margin: const EdgeInsets.only(top: 8),
            padding: const EdgeInsets.only(left: 26),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.black),
                    SizedBox(width: 8),
                    Text(
                      'Museum Macan',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  'Jalan Perjuangan, RT.11/RW.10, Kebon Jeruk',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 8),
                Text(
                  'Menampilkan di Peta',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
          
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                // Handle favorite button press
              },
            ),
            IconButton(
              icon: const Icon(Icons.calendar_month_sharp),
              onPressed: () {
                // Handle shopping cart button press
              },
            ),
            IconButton(
              icon: const Icon(Icons.storefront_outlined),
              onPressed: () {
                // Handle message button press
              },
            ),
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                // Handle message button press
              },
            ),
          ],
        ),
      ),
    );
  }
}


class DetailPameran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
        ),
        actions: [
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.favorite),
                onPressed: () {
                  // Handle favorite button press
                },
              ),
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {
                  // Handle shopping cart button press
                },
              ),
              IconButton(
                icon: const Icon(Icons.message),
                onPressed: () {
                  // Handle message button press
                },
              ),
            ],
          ), 
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Image
          Container(
            margin: const EdgeInsets.only(top: 130),
            child: Image.asset(
              'assets/Pameran4.png', // Ganti dengan path gambar Anda
              width: 393,
              height: 267,
            ),
          ),
          // Layout with information
          Container(
            width: double.infinity,
            height: 80,
            margin: const EdgeInsets.only(top: 8),
            padding: const EdgeInsets.only(left: 26),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.black),
                    SizedBox(width: 8),
                    Text(
                      'Museum Macan',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  'Jalan Perjuangan, RT.11/RW.10, Kebon Jeruk',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 8),
                Text(
                  'Menampilkan di Peta',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
          
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                // Handle favorite button press
              },
            ),
            IconButton(
              icon: const Icon(Icons.calendar_month_sharp),
              onPressed: () {
                // Handle shopping cart button press
              },
            ),
            IconButton(
              icon: const Icon(Icons.storefront_outlined),
              onPressed: () {
                // Handle message button press
              },
            ),
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                // Handle message button press
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DetailPameran5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
        ),
        actions: [
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.favorite),
                onPressed: () {
                  // Handle favorite button press
                },
              ),
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {
                  // Handle shopping cart button press
                },
              ),
              IconButton(
                icon: const Icon(Icons.message),
                onPressed: () {
                  // Handle message button press
                },
              ),
            ],
          ), 
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Image
          Container(
            margin: const EdgeInsets.only(top: 130),
            child: Image.asset(
              'assets/Pameran5.png', // Ganti dengan path gambar Anda
              width: 393,
              height: 267,
            ),
          ),
          // Layout with information
          Container(
            width: double.infinity,
            height: 80,
            margin: const EdgeInsets.only(top: 8),
            padding: const EdgeInsets.only(left: 26),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.black),
                    SizedBox(width: 8),
                    Text(
                      'Museum Macan',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  'Jalan Perjuangan, RT.11/RW.10, Kebon Jeruk',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 8),
                Text(
                  'Menampilkan di Peta',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
          
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                // Handle favorite button press
              },
            ),
            IconButton(
              icon: const Icon(Icons.calendar_month_sharp),
              onPressed: () {
                // Handle shopping cart button press
              },
            ),
            IconButton(
              icon: const Icon(Icons.storefront_outlined),
              onPressed: () {
                // Handle message button press
              },
            ),
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                // Handle message button press
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DetailPameran6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
        ),
        actions: [
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.favorite),
                onPressed: () {
                  // Handle favorite button press
                },
              ),
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {
                  // Handle shopping cart button press
                },
              ),
              IconButton(
                icon: const Icon(Icons.message),
                onPressed: () {
                  // Handle message button press
                },
              ),
            ],
          ), 
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Image
          Container(
            margin: const EdgeInsets.only(top: 130),
            child: Image.asset(
              'assets/Pameran6.png', // Ganti dengan path gambar Anda
              width: 393,
              height: 267,
            ),
          ),
          // Layout with information
          Container(
            width: double.infinity,
            height: 80,
            margin: const EdgeInsets.only(top: 8),
            padding: const EdgeInsets.only(left: 26),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.black),
                    SizedBox(width: 8),
                    Text(
                      'Museum Macan',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  'Jalan Perjuangan, RT.11/RW.10, Kebon Jeruk',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 8),
                Text(
                  'Menampilkan di Peta',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
          
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                // Handle favorite button press
              },
            ),
            IconButton(
              icon: const Icon(Icons.calendar_month_sharp),
              onPressed: () {
                // Handle shopping cart button press
              },
            ),
            IconButton(
              icon: const Icon(Icons.storefront_outlined),
              onPressed: () {
                // Handle message button press
              },
            ),
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                // Handle message button press
              },
            ),
          ],
        ),
      ),
    );
  }
}

