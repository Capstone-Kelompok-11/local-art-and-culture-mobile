import 'package:event_capstone/detail_info.dart';
import 'package:event_capstone/event_detail_page.dart';
import 'package:flutter/material.dart';
import 'event_model.dart';

class TicketEventPage extends StatefulWidget {
  final Event event;

  TicketEventPage({required this.event});
  @override
  _TicketEventPageState createState() => _TicketEventPageState();
}

class _TicketEventPageState extends State<TicketEventPage> {
  int ticketCount = 1; // Initial ticket count
  double ticketPrice = 79000.0; // Initial ticket price

  double calculateTotalPayment() {
    double serviceFee = 1000.0;
    double appFee = 2000.0;

    return calculateTotalPrice() + serviceFee + appFee;
  }

  // Function to increment the number of tickets
  void incrementTicket() {
    setState(() {
      ticketCount++;
    });
  }

  // Function to calculate the total price
  double calculateTotalPrice() {
    return ticketCount * ticketPrice;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20, top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context)=> EventDetailPage(event: widget.event,))
                            );
                          },
                          child: Icon(
                            Icons.arrow_back, size: 24,
                          ),
                        ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Pilih Tiket',
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                  ),
                  Icon(Icons.abc, color: Colors.white, size: 24,)
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Container(
                    height: 91,
                    width: 83,
                    child: Image.asset('assets/images/event/realitytiket.png'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.event.title,
                        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.label_important, size: 10, color: Colors.grey.shade400),
                          SizedBox(
                            width: 5,
                          ),
                          Text('VIP', style: TextStyle(fontSize: 10, color: Colors.grey.shade400)),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.alarm_add, size: 10, color: Colors.grey.shade400),
                          SizedBox(
                            width: 5,
                          ),
                          Text('13 Januari 2023', style: TextStyle(fontSize: 10, color: Colors.grey.shade400)),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Rp ${ticketPrice.toStringAsFixed(0)}',
                            style: TextStyle(fontSize: 18, color: Colors.deepPurple, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                ticketCount = 0;
                              });
                            },
                            child: Icon(
                              Icons.delete_outline,
                              color: Colors.grey,
                              size: 24,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  if (ticketCount > 1) {
                                    setState(() {
                                      ticketCount--;
                                    });
                                  }
                                },
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.deepPurple,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    size: 12,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('$ticketCount'),
                              SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    ticketCount++;
                                  });
                                },
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.deepPurple,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ],
              ),
              
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                   'Rincian Pembayaran', style: TextStyle(
                    fontWeight: FontWeight.w500, fontSize: 20
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                   'Total Pembelian', style: TextStyle(
                    fontWeight: FontWeight.w500, fontSize: 16
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Harga', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                      ),
                      Text(
                        'Rp ${calculateTotalPrice().toStringAsFixed(0)}', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                      
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                        height: 1,
                        width: 393,
                        color: Colors.grey.shade300,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                   'Biaya Transaksi', style: TextStyle(
                    fontWeight: FontWeight.w500, fontSize: 16
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Biaya Layanan', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                      ),
                      Text(
                        'Rp 1000', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Biaya Aplikasi', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                      ),
                      Text(
                        'Rp 2000', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                        height: 1,
                        width: 393,
                        color: Colors.grey.shade300,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                       'Total Pembayaran', style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 16
                        ),
                      ),
                      Text(
                        'Rp ${calculateTotalPayment().toStringAsFixed(0)}', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 5,
              spreadRadius: 5
            )
          ]
        ),
        child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
        label: '',
        icon: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total Pembayaran', style: TextStyle(
                      fontSize: 12, color: Colors.grey.shade500
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Rp ${calculateTotalPayment().toStringAsFixed(0)}',
                    style: TextStyle(fontSize: 20, color: Colors.deepPurple, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ],
        ),
          ),
          BottomNavigationBarItem(
        icon: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            alignment: Alignment.center,
            height: 44,
            width: 163,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => DetailInfoPage(
                                event: widget.event,
                                totalPrice: calculateTotalPayment(),
                                ticketCount: ticketCount,
                              ),)
                            );
              },
              child: Text(
                'Selanjutnya',
                style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
        label: '',
          ),
        ],
      ),
      ),

    );
  }
}