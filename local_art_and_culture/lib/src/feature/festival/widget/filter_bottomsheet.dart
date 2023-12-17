import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FestivalFilterBottomSheet extends StatefulWidget {
  const FestivalFilterBottomSheet({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FestivalFilterBottomSheetState createState() =>
      _FestivalFilterBottomSheetState();
}

class _FestivalFilterBottomSheetState extends State<FestivalFilterBottomSheet> {
  DateTime? selectedDate;
  double minPrice = 0;
  double maxPrice = 1000000;
  String selectedOrder = '';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Filter Festivals',
              style: GoogleFonts.plusJakartaSans(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Select Date:',
              style: GoogleFonts.plusJakartaSans(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                final DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2023),
                  lastDate: DateTime(2024),
                );
                if (picked != null && picked != selectedDate) {
                  setState(() {
                    selectedDate = picked;
                  });
                }
              },
              child: Text(selectedDate != null
                  ? 'Selected Date: ${selectedDate!.toString().substring(0, 10)}'
                  : 'Select Date'),
            ),
            const SizedBox(height: 20),
            Text(
              'Price Range: ${minPrice.toInt()} - ${maxPrice.toInt()}',
            ),
            RangeSlider(
              values: RangeValues(minPrice, maxPrice),
              min: 0,
              max: 1000000,
              divisions: 100,
              onChanged: (RangeValues values) {
                setState(() {
                  minPrice = values.start;
                  maxPrice = values.end;
                });
              },
            ),
            const SizedBox(height: 20),
            Text(
              'Sort Order:',
              style: GoogleFonts.plusJakartaSans(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedOrder = 'A-Z';
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Colors.blue;
                        }
                        return selectedOrder == 'A-Z' ? Colors.blue : null;
                      },
                    ),
                  ),
                  child: const Text('A-Z'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedOrder = 'Z-A';
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Colors.blue;
                        }
                        return selectedOrder == 'Z-A' ? Colors.blue : null;
                      },
                    ),
                  ),
                  child: const Text('Z-A'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Apply the festival filters and close the bottom sheet
                // You can add your filter logic here
                Navigator.pop(
                  context,
                  {
                    'date': selectedDate,
                    'minPrice': minPrice,
                    'maxPrice': maxPrice,
                    'order': selectedOrder,
                  },
                );
              },
              child: const Text('Apply Filters'),
            ),
          ],
        ),
      ),
    );
  }
}
