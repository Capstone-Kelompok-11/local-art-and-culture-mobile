import 'package:flutter/material.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:intl/intl.dart';
import 'dart:convert';

import 'package:local_art_and_culture/models/event_model.dart';

class DetailCalenderEvent extends StatefulWidget {
  const DetailCalenderEvent({Key? key}) : super(key: key);

  @override
  State<DetailCalenderEvent> createState() => _DetailCalenderEventState();
}

class _DetailCalenderEventState extends State<DetailCalenderEvent> {
  List<DateTime?> _singleDate = [DateTime.now()];
  String? duedate;
  final List<EventModel> _data =
      []; // Use EventModel instead of Map<String, dynamic>

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
                const SizedBox(width: 8),
                const Expanded(
                  child: Text(
                    'Calendar',
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
                      DateTime? dateTime = _singleDate.first!;
                      duedate = DateFormat("yyyy-MM-dd").format(dateTime);
                      fetchDataFromAPI(duedate!);
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
                      horizontal: 24,
                      vertical: 16,
                    ),
                    child: EventCard(
                      date: event.fromDate?.toString() ?? '',
                      eventTitle: event.eventName ?? '',
                      eventDescription: event.eventDescription ?? '',
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

  void fetchDataFromAPI(String date) {
    // Simulated API response
    String apiResponse = '''
      {
    "status": true,
    "message": "Success",
    "data": {
        "allEvents": [
            {
                "id": 2,
                "from_date": "2023-12-31T19:00:00Z",
                "to_date": "2023-12-31T19:00:00Z",
                "event_name": "Taylor Swift",
                "event_description": "This is taylor swift",
                "address_id": null,
                "creator_id": 3,
                "category_id": 4,
                "creator": {
                    "id": 3,
                    "outlet_name": "tesst",
                    "email": "test@gmail.com",
                    "phone_number": "08234274",
                    "user_id": 1,
                    "address_id": null,
                    "address": ""
                },
                "category": {
                    "id": 4,
                    "category": "Konser",
                    "type": "Event"
                },
                "guest": [
                    {
                        "id": 1,
                        "name": "iqbaal",
                        "role": "guest star",
                        "event_id": 2
                    },
                    {
                        "id": 2,
                        "name": "iqbaal",
                        "role": "guest star",
                        "event_id": 2
                    },
                    {
                        "id": 3,
                        "name": "echan",
                        "role": "guest star",
                        "event_id": 2
                    }
                ]
            },
            {
                "id": 3,
                "from_date": "2023-12-31T20:00:00Z",
                "to_date": "2023-12-31T20:00:00Z",
                "event_name": "Swifty",
                "event_description": "event lokal dari provinsi medan",
                "address_id": null,
                "creator_id": 3,
                "category_id": 4,
                "creator": {
                    "id": 3,
                    "outlet_name": "tesst",
                    "email": "test@gmail.com",
                    "phone_number": "08234274",
                    "user_id": 1,
                    "address_id": null,
                    "address": ""
                },
                "category": {
                    "id": 4,
                    "category": "Konser",
                    "type": "Event"
                },
                "guest": null
            },
            {
                "id": 4,
                "from_date": "2023-10-31T20:00:00Z",
                "to_date": "2023-12-31T20:00:00Z",
                "event_name": "The Story Begins",
                "event_description": "event lokal dari provinsi medan",
                "address_id": null,
                "creator_id": 3,
                "category_id": 4,
                "creator": {
                    "id": 3,
                    "outlet_name": "tesst",
                    "email": "test@gmail.com",
                    "phone_number": "08234274",
                    "user_id": 1,
                    "address_id": null,
                    "address": ""
                },
                "category": {
                    "id": 4,
                    "category": "Konser",
                    "type": "Event"
                },
                "guest": null
            },
            {
                "id": 5,
                "from_date": "2023-12-31T12:00:00Z",
                "to_date": "2023-12-31T12:00:00Z",
                "event_name": "Swifty",
                "event_description": "event lokal dari provinsi medan",
                "address_id": null,
                "creator_id": 3,
                "category_id": 4,
                "creator": {
                    "id": 3,
                    "outlet_name": "tesst",
                    "email": "test@gmail.com",
                    "phone_number": "08234274",
                    "user_id": 1,
                    "address_id": null,
                    "address": ""
                },
                "category": {
                    "id": 4,
                    "category": "Konser",
                    "type": "Event"
                },
                "guest": null
            },
            {
                "id": 6,
                "from_date": "2019-12-31T12:00:00Z",
                "to_date": "2020-12-31T12:00:00Z",
                "event_name": "Swifty",
                "event_description": "event lokal dari provinsi medan",
                "address_id": null,
                "creator_id": 3,
                "category_id": 4,
                "creator": {
                    "id": 3,
                    "outlet_name": "tesst",
                    "email": "test@gmail.com",
                    "phone_number": "08234274",
                    "user_id": 1,
                    "address_id": null,
                    "address": ""
                },
                "category": {
                    "id": 4,
                    "category": "Konser",
                    "type": "Event"
                },
                "guest": null
            },
            {
                "id": 7,
                "from_date": "2019-12-31T12:00:00Z",
                "to_date": "2020-12-31T12:00:00Z",
                "event_name": "Swifty",
                "event_description": "event lokal dari provinsi medan",
                "address_id": null,
                "creator_id": 0,
                "category_id": 4,
                "creator": {
                    "id": 0,
                    "outlet_name": "",
                    "email": "",
                    "phone_number": "",
                    "user_id": 0,
                    "address_id": null,
                    "address": ""
                },
                "category": {
                    "id": 4,
                    "category": "Konser",
                    "type": "Event"
                },
                "guest": null
            },
            {
                "id": 8,
                "from_date": "2019-12-31T12:00:00Z",
                "to_date": "2020-12-31T12:00:00Z",
                "event_name": "Swifty",
                "event_description": "event lokal dari provinsi medan",
                "address_id": null,
                "creator_id": 0,
                "category_id": 4,
                "creator": {
                    "id": 0,
                    "outlet_name": "",
                    "email": "",
                    "phone_number": "",
                    "user_id": 0,
                    "address_id": null,
                    "address": ""
                },
                "category": {
                    "id": 4,
                    "category": "Konser",
                    "type": "Event"
                },
                "guest": null
            },
            {
                "id": 9,
                "from_date": "1998-12-31T12:00:00Z",
                "to_date": "2020-12-31T12:00:00Z",
                "event_name": "Swifty",
                "event_description": "event lokal dari provinsi medan",
                "address_id": null,
                "creator_id": 0,
                "category_id": 4,
                "creator": {
                    "id": 0,
                    "outlet_name": "",
                    "email": "",
                    "phone_number": "",
                    "user_id": 0,
                    "address_id": null,
                    "address": ""
                },
                "category": {
                    "id": 4,
                    "category": "Konser",
                    "type": "Event"
                },
                "guest": null
            },
            {
                "id": 11,
                "from_date": "2023-12-31T12:00:00Z",
                "to_date": "2023-12-31T12:00:00Z",
                "event_name": "The Dream Show",
                "event_description": "This is event the dream show",
                "address_id": null,
                "creator_id": 3,
                "category_id": 4,
                "creator": {
                    "id": 3,
                    "outlet_name": "tesst",
                    "email": "test@gmail.com",
                    "phone_number": "08234274",
                    "user_id": 1,
                    "address_id": null,
                    "address": ""
                },
                "category": {
                    "id": 4,
                    "category": "Konser",
                    "type": "Event"
                },
                "guest": null
            },
            {
                "id": 12,
                "from_date": "2023-12-31T12:00:00Z",
                "to_date": "2023-12-31T12:00:00Z",
                "event_name": "The Dream Show",
                "event_description": "This is event the dream show",
                "address_id": null,
                "creator_id": 3,
                "category_id": 4,
                "creator": {
                    "id": 3,
                    "outlet_name": "tesst",
                    "email": "test@gmail.com",
                    "phone_number": "08234274",
                    "user_id": 1,
                    "address_id": null,
                    "address": ""
                },
                "category": {
                    "id": 4,
                    "category": "Konser",
                    "type": "Event"
                },
                "guest": null
            }
        ],
        "pagination": {
            "allPages": 2,
            "currentPage": 1,
            "nextPage": 2,
            "prevPage": 1
        }
    }
}
    ''';

    Map<String, dynamic> parsedResponse = jsonDecode(apiResponse);
    List<dynamic> allEvents = parsedResponse['data']['allEvents'];

    List<EventModel> selectedEvents = allEvents.map((event) {
      return EventModel.fromJson(event);
    }).toList();

    setState(() {
      _data.clear();
      _data.addAll(selectedEvents);
    });
  }
}

class EventCard extends StatelessWidget {
  final String date;
  final String eventTitle;
  final String eventDescription;
  final String imagePath;

  const EventCard({
    Key? key,
    required this.date,
    required this.eventTitle,
    required this.eventDescription,
    required this.imagePath,
  }) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345,
      height: 223,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.4),
            BlendMode.darken,
          ),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 16,
            top: 143,
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 59,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 2),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF3B1A5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Pameran',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 2),
                        decoration: BoxDecoration(
                          color: const Color(0xFF768DD5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Gratis',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 297,
                    child: Text(
                      eventTitle,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'From IDR 0K  |',
                        style: TextStyle(
                          color: Color(0xFFB3B3B3),
                          fontSize: 12,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(width: 1),
                      Container(
                        width: 10,
                        height: 10,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          color: Colors
                              .red, // Replace with your dot color or decoration
                          shape: BoxShape.circle,
                        ),
                        child: const SizedBox(), // Your dot UI here
                      ),
                      const SizedBox(width: 1),
                      Text(
                        eventDescription,
                        style: const TextStyle(
                          color: Color(0xFFB3B3B3),
                          fontSize: 12,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
