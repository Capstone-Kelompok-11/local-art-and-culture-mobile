class Event {
  final int id;
  final DateTime fromDate;
  final DateTime toDate;
  final String eventName;
  final String eventDescription;
  final String creatorName;
  final String categoryName;
  final List<Map<String, dynamic>> guests; // Sesuaikan dengan struktur data yang sesuai

  Event({
    required this.id,
    required this.fromDate,
    required this.toDate,
    required this.eventName,
    required this.eventDescription,
    required this.creatorName,
    required this.categoryName,
    required this.guests,
  });

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      id: json['id'],
      fromDate: DateTime.parse(json['from_date']),
      toDate: DateTime.parse(json['to_date']),
      eventName: json['event_name'],
      eventDescription: json['event_description'],
      creatorName: json['creator']['outlet_name'],
      categoryName: json['category']['category'],
      guests: List<Map<String, dynamic>>.from(json['guest']),
    );
  }
}
