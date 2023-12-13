import 'package:flutter/material.dart';
import 'package:local_art_and_culture/src/feature/event/event_page.dart';
import 'event_model.dart';

class EventDetailPage extends StatelessWidget {
  final Event event;

  EventDetailPage({required this.event});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  event.imageUrl,
                  height: 295,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => EventPage()));
                        },
                        child: Icon(
                          Icons.arrow_back,
                          size: 32,
                        ),
                      ),
                      SizedBox(
                        width: 210,
                      ),
                      Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: Icon(
                          Icons.favorite,
                          size: 24,
                          color: Colors.grey.shade400,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: Icon(
                          Icons.shopping_cart,
                          size: 24,
                          color: Colors.grey.shade400,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: Icon(
                          Icons.chat,
                          size: 24,
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 160,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 20,
                          width: 45,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            'Event',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 20,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.cyan.shade500,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            'Berbayar',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      event.title,
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.circle_outlined,
                          size: 14,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Event Project',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 10,
              decoration: BoxDecoration(color: Colors.grey.shade200),
            ),
            Container(
              alignment: Alignment.centerLeft,
              height: 331,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Deskripsi Acara',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      event.description,
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.add_location_rounded,
                          size: 18,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          event.location,
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 23,
                        ),
                        Text(
                          'Jl. Raya Kelapa Nias No.6, RT.8/RW.6, Klp. Gading Bar.,\nKec. Klp. Gading, Jkt Utara, Daerah Khusus Ibukota\nJakarta 14240',
                          style: TextStyle(fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 23,
                        ),
                        Text(
                          'Lihat di Google Maps',
                          style: TextStyle(
                              fontWeight: FontWeight.w300, color: Colors.blue),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_month,
                          size: 18,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '13 Januari 2023',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 12),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.access_alarm,
                          size: 18,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '09.30 - 20.30 WIB',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 12),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 10,
              decoration: BoxDecoration(color: Colors.grey.shade200),
            ),
            Container(
              height: 309,
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bintang Tamu',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Image.asset('assets/images/event/reality.png'),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Reality Club',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Penyanyi',
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 10,
              decoration: BoxDecoration(color: Colors.grey.shade200),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tiket',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Container(
                            height: 91,
                            width: 83,
                            child: Image.asset(
                              'assets/images/event/realitytiket.png',
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Alkafest 2023 - Closing Ceremony',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 12),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.label_important,
                                  size: 10,
                                  color: Colors.grey.shade400,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'VIP',
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey.shade400),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.alarm_add,
                                  size: 10,
                                  color: Colors.grey.shade400,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '13 Januari 2023',
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey.shade400),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Rp. 79.000',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.deepPurple,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: 100,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                          color: Colors.deepPurple,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text('2'),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                          color: Colors.deepPurple,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              size: 24,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag,
              size: 24,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Badge(
                child: Icon(
              Icons.chat,
              size: 24,
            )),
            label: ''),
      ]),
    );
  }
}
