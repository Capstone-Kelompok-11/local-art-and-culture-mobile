import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerAddress extends StatefulWidget {
  const CustomerAddress({Key? key}) : super(key: key);

  @override
  State<CustomerAddress> createState() => _CustomerAdressState();
}

class _CustomerAdressState extends State<CustomerAddress> {
  String? selectedRadio;
  String selectedLocation = '';
  String selectedName = '';
  String selectedAddress = '';
  String selectedNumber = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 160,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Alamat Pembeli',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 15),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                margin: const EdgeInsets.only(top: 3.0),
                child: const Icon(
                  Icons.location_on,
                  color: Color(0xff3653B0),
                  size: 24.0,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      selectedLocation.isNotEmpty
                          ? selectedLocation
                          : 'Location Default',
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      selectedName.isNotEmpty ? selectedName : 'Nama Default',
                      style: GoogleFonts.plusJakartaSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff999999)),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      selectedNumber.isNotEmpty
                          ? selectedNumber
                          : 'Nomor Default',
                      style: GoogleFonts.plusJakartaSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff999999)),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      selectedAddress.isNotEmpty
                          ? selectedAddress
                          : 'Alamat Default',
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return SingleChildScrollView(
                        child: Container(
                          height: 500,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              topRight: Radius.circular(25.0),
                            ),
                          ),
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: const Icon(
                                      Icons.clear_sharp,
                                      size: 24,
                                    ),
                                  ),
                                  Text(
                                    'Pilih Alamat',
                                    style: GoogleFonts.plusJakartaSans(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              buildRadioItem(
                                'Rumah',
                                'Abigael Anjayebew',
                                'Rumah',
                                '081233456743',
                                'Jl. Cimpedak Komplek Griya Mitra Blok F1 Nomor 99 Sumatera Selatan, Palembang',
                              ),
                              const SizedBox(height: 25),
                              buildRadioItem(
                                'Kantor',
                                'John Wick',
                                'Kantor',
                                '081233456789',
                                'Jl. Tambunan Kompleks ABCD Blok 4B No. 250 Kayangan, Surabaya',
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: const Row(
                  children: [
                    Icon(
                      Icons.navigate_next,
                      color: Color(0xff323232),
                      size: 24.0,
                    ),
                  ],
                ),
              )
            ])
          ],
        ),
      ),
    );
  }

  Widget buildRadioItem(String title, String name, String location,
      String number, String address) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 3.0),
          child: const Icon(
            Icons.location_on,
            color: Color(0xff3653B0),
            size: 24.0,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                name,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff999999),
                ),
              ),
              const SizedBox(height: 3),
              Text(
                number,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff999999),
                ),
              ),
              const SizedBox(height: 3),
              Text(
                address,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff666666),
                ),
              ),
            ],
          ),
        ),
        Radio(
          value: title,
          groupValue: selectedRadio,
          onChanged: (String? value) {
            setState(() {
              selectedRadio = value;
              selectedLocation = location;
              selectedName = name;
              selectedNumber = number;
              selectedAddress = address;
            });
          },
        ),
      ],
    );
  }
}
