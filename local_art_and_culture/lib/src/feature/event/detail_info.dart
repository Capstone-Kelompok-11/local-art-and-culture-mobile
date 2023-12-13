import 'package:flutter/material.dart';
import 'package:local_art_and_culture/src/feature/event/form_model.dart';
import 'package:local_art_and_culture/src/feature/event/invoice_page.dart';
import 'package:local_art_and_culture/src/feature/event/ticket_cart.dart';
import 'event_model.dart';

class DetailInfoPage extends StatefulWidget {
  final Event event;
  final double totalPrice;
  final int ticketCount;

  DetailInfoPage(
      {required this.event,
      required this.ticketCount,
      required this.totalPrice});

  @override
  _DetailInfoPageState createState() => _DetailInfoPageState();
}

class _DetailInfoPageState extends State<DetailInfoPage> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailAddressController = TextEditingController();
  TextEditingController ktpController = TextEditingController();

  @override
  void dispose() {
    fullNameController.dispose();
    phoneNumberController.dispose();
    emailAddressController.dispose();
    ktpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  TicketEventPage(event: widget.event)));
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          size: 24,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: const Text(
                          'Detail Pembelian',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                      ),
                      const Icon(
                        Icons.abc,
                        color: Colors.white,
                        size: 24,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 150,
                        width: 100,
                        child:
                            Image.asset('assets/images/event/realitytiket.png'),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Alkafest 2023 - Closing Ceremony',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 12),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.label_important,
                                  size: 10, color: Colors.grey.shade400),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                'VIP',
                                style: TextStyle(
                                    fontSize: 10, color: Colors.grey.shade400),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.add_location_alt,
                                  size: 10, color: Colors.grey.shade400),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                widget.event.location,
                                style: TextStyle(
                                    fontSize: 10, color: Colors.grey.shade400),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.alarm_add,
                                  size: 10, color: Colors.grey.shade400),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                '13 Januari 2023',
                                style: TextStyle(
                                    fontSize: 10, color: Colors.grey.shade400),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      alignment: Alignment.center,
                      height: 24,
                      width: 360,
                      child: const Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Pembelian',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Harga',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Jumlah',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Container(
                      alignment: Alignment.center,
                      height: 24,
                      width: 360,
                      decoration: BoxDecoration(
                          color: Colors.cyan.shade100,
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
                              children: [
                                Icon(
                                  Icons.label_important,
                                  size: 14,
                                ),
                                Text('VIP'),
                              ],
                            ),
                            Text(widget.totalPrice.toStringAsFixed(0)),
                            Text('x${widget.ticketCount.toStringAsFixed(0)}')
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 10,
              decoration: BoxDecoration(color: Colors.grey.shade200),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Info Pengunjung',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  // TextFormFields for the specified categories
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Nama Lengkap*'),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 48,
                        width: 345,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextFormField(
                            controller: fullNameController,
                            decoration: const InputDecoration(
                                hintText: '  Text', border: InputBorder.none),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Nomer Telephone*'),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 48,
                        width: 345,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextFormField(
                            controller: phoneNumberController,
                            decoration: const InputDecoration(
                                hintText: '  Text', border: InputBorder.none),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Alamat Email*'),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 48,
                        width: 345,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextFormField(
                            controller: emailAddressController,
                            decoration: const InputDecoration(
                                hintText: '  Text', border: InputBorder.none),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Nomor KTP*'),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 48,
                        width: 345,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextFormField(
                            controller: ktpController,
                            decoration: const InputDecoration(
                                hintText: '  Text', border: InputBorder.none),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(color: Colors.grey.shade300, blurRadius: 5, spreadRadius: 5)
        ]),
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
                          'Total Pembayaran',
                          style: TextStyle(
                              fontSize: 12, color: Colors.grey.shade500),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Rp ${widget.totalPrice.toStringAsFixed(0)}',
                          style: const TextStyle(
                              fontSize: 20,
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.w600),
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
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ReceiptPage(
                            event: widget.event,
                            formDetails: FormDetails(
                              fullName: fullNameController.text,
                              phoneNumber: phoneNumberController.text,
                              emailAddress: emailAddressController.text,
                              ktp: ktpController.text,
                            ),
                            ticketCount: widget.ticketCount,
                            totalPrice: widget.totalPrice,
                          ),
                        ),
                      );
                    },
                    child: const Text(
                      'Submit',
                      style: TextStyle(color: Colors.white),
                    ),
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
