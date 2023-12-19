// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:intl/intl.dart';
import 'package:local_art_and_culture/src/feature/home%20page/widget/calender_card.dart';

class DetailCalenderEvent extends StatefulWidget {
  const DetailCalenderEvent({Key? key}) : super(key: key);

  @override
  State<DetailCalenderEvent> createState() => _DetailCalenderEventState();
}

class _DetailCalenderEventState extends State<DetailCalenderEvent> {
  List<DateTime?> _singleDate = [DateTime.now()];
  String? duedate;
  // ignore: prefer_final_fields
  List<dynamic> _data = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(width: 8), // Adjust the spacing as needed
                const Expanded(
                  child: Text(
                    'Calender',
                    style: TextStyle(
                      color: Color(0xFF1A1A1A),
                      fontSize: 20,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Container(
                width: double.infinity,
                height: 300,
                margin: const EdgeInsets.all(30),
                child: CalendarDatePicker2(
                  config: CalendarDatePicker2Config(
                    calendarType: CalendarDatePicker2Type.single,
                  ),
                  value: _singleDate,
                  onValueChanged: (value) {
                    setState(() {
                      _singleDate = value;
                      print(_singleDate);
                      DateTime? dateTime = _singleDate.first!;
                      duedate = DateFormat("yyyy-MM-dd").format(dateTime);
                      print(duedate);
                      if (duedate == "2023-12-27") {
                        _data.add({"title": "Edwin's Gallery", "desk": "aaa"});
                      } else {
                        _data.clear();
                      }
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 300,
              child: ListView.builder(
                itemCount: _data.length,
                itemBuilder: (context, index) {
                  final event = _data[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 16),
                    child: EventCard(
                      date: duedate ?? 'Minggu, 5 September 2023',
                      eventTitle: event['title'],
                      eventDescription: event['desk'],
                      imagePath: 'assets/Event (1).png',
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
