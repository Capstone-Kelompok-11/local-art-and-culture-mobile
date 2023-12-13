import 'package:flutter/material.dart';
import 'package:local_art_and_culture/src/feature/event/event_model.dart';
import 'package:local_art_and_culture/src/feature/event/event_page.dart';
import 'form_model.dart';

class ReceiptPage extends StatefulWidget {
  final FormDetails formDetails;
  final Event event;
  final double totalPrice;
  final int ticketCount;

  ReceiptPage(
      {required this.formDetails,
      required this.event,
      required this.ticketCount,
      required this.totalPrice});

  @override
  _ReceiptPageState createState() => _ReceiptPageState();
}

class _ReceiptPageState extends State<ReceiptPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade200,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => EventPage(),
                        ),
                      );
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 24,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Invoice',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                  ),
                  Icon(
                    Icons.abc,
                    color: Colors.cyan.shade200,
                    size: 24,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  alignment: Alignment.center,
                  height: 1100,
                  width: 330,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.check_circle,
                          size: 58,
                          color: Colors.green,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Terima Kasih!',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Pembayaran kamu berhasil',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade400,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Nomor Invoice',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '12312213',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Tanggal Transaksi',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '18 Agustus 2023',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '--------------------------------------------------------------------------',
                          style: TextStyle(color: Colors.grey.shade400),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 150,
                              width: 100,
                              child: Image.asset(
                                  'assets/images/event/realitytiket.png'),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 106,
                                    width: 162,
                                    child: Column(
                                      children: [
                                        Text(
                                          widget.event.title,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(Icons.add_location_alt,
                                                size: 10,
                                                color: Colors.grey.shade400),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              widget.event.location,
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(Icons.alarm_add,
                                                size: 10,
                                                color: Colors.grey.shade400),
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
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Info Pengunjung',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Nama Lengkap',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        '${widget.formDetails.fullName}',
                                        style: TextStyle(
                                            color: Colors.grey.shade500),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        'Email',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        '${widget.formDetails.emailAddress}',
                                        style: TextStyle(
                                            color: Colors.grey.shade500),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Nomor Handphone',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        '${widget.formDetails.phoneNumber}',
                                        style: TextStyle(
                                            color: Colors.grey.shade500),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        'Nomor KTP',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        '${widget.formDetails.ktp}',
                                        style: TextStyle(
                                            color: Colors.grey.shade500),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Info Pesanan',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Pembelian',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        'Jumlah',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        'Harga',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 23,
                                  width: 285,
                                  decoration: BoxDecoration(
                                      color: Colors.cyan.shade100,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Alkafest',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          '         x${widget.ticketCount.toStringAsFixed(0)}',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          'Rp 79000',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Pembelian',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        'Rp ${widget.totalPrice.toStringAsFixed(0)}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Metode Pembayaran',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, right: 10),
                              child: Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: 32,
                                    width: 32,
                                    decoration: BoxDecoration(
                                        color: Colors.deepPurple,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Text(
                                      'OVO',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'OVO',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Text(
                          '--------------------------------------------------------------------------',
                          style: TextStyle(color: Colors.grey.shade400),
                        ),
                        SizedBox(height: 20),
                        Image.asset('assets/images/event/qrcode.png'),
                        SizedBox(height: 25),
                        Text(
                          'Tunjukkan QR code kamu di tempat pengambilan tiket event kamu!',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                alignment: Alignment.centerLeft,
                height: 45,
                width: 330,
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(30)),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => EventPage(),
                      ),
                    );
                  },
                  child: Text(
                    '             Lanjut Berbelanja',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
