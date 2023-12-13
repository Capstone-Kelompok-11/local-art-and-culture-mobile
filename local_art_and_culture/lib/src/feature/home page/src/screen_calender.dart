import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DetailCalenderEvent extends StatefulWidget {
  const DetailCalenderEvent({Key? key}) : super(key: key);

  @override
  State<DetailCalenderEvent> createState() => _DetailCalenderEventState();
}

class _DetailCalenderEventState extends State<DetailCalenderEvent> {
  List<DateTime?> _singleDate = [DateTime.now()];
  String? duedate;
  List<dynamic> _data = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
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
                    duedate = DateFormat("yyyy-MM-dd").format(dateTime!);
                    print(duedate);
                    if (duedate == "2023-12-27") {
                      _data.add({"title": "A", "desk": "aaa"});
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
                return Card(
                  child: ListTile(
                    title: Text(_data[index]["title"]),
                    subtitle: Text(_data[index]["desk"]),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
