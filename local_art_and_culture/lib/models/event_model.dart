import 'dart:convert';

class EventModel {
  int id;
  DateTime? fromDate;
  DateTime? toDate;
  String? eventName;
  String? eventDescription;
  int? addressId;
  int? creatorId;
  int? categoryId;
  Creator? creator;
  Category? category;
  List<Guest?> guests;

  EventModel({
    required this.id,
    required this.fromDate,
    required this.toDate,
    required this.eventName,
    required this.eventDescription,
    this.addressId,
    required this.creatorId,
    required this.categoryId,
    required this.creator,
    required this.category,
    required this.guests,
  });

  factory EventModel.fromJson(Map<String, dynamic> json) {
    return EventModel(
      id: json['id'],
      fromDate: DateTime.parse(json['from_date']),
      toDate: DateTime.parse(json['to_date']),
      eventName: json['event_name'],
      eventDescription: json['event_description'],
      addressId: json['address_id'],
      creatorId: json['creator_id'],
      categoryId: json['category_id'],
      creator: Creator?.fromJson(json['creator']),
      category: Category?.fromJson(json['category']),
      guests: (json['guest'] as List<dynamic>?)
          ?.map((guest) => Guest.fromJson(guest))
          .toList() ??
          [],
    );
  }

  Map<String?, dynamic> toJson() {
    return {
      'id': id,
      'from_date': fromDate?.toIso8601String(),
      'to_date': toDate?.toIso8601String(),
      'event_name': eventName,
      'event_description': eventDescription,
      'address_id': addressId,
      'creator_id': creatorId,
      'category_id': categoryId,
      'creator': creator?.toJson(),
      'category': category?.toJson(),
      'guest': guests.map((guest) => guest?.toJson()).toList(),
    };
  }

  String? toJsonString() => json.encode(toJson());
}

class Creator {
  int? id;
  String? outletName;
  String? email;
  String? phoneNumber;
  int? userId;
  int? addressId;
  String? address;

  Creator({
    required this.id,
    required this.outletName,
    required this.email,
    required this.phoneNumber,
    required this.userId,
    this.addressId,
    required this.address,
  });

  factory Creator.fromJson(Map<String, dynamic> json) {
    return Creator(
      id: json['id'],
      outletName: json['outlet_name'],
      email: json['email'],
      phoneNumber: json['phone_number'],
      userId: json['user_id'],
      addressId: json['address_id'],
      address: json['address'],
    );
  }

  Map<String?, dynamic> toJson() {
    return {
      'id': id,
      'outlet_name': outletName,
      'email': email,
      'phone_number': phoneNumber,
      'user_id': userId,
      'address_id': addressId,
      'address': address,
    };
  }

  String toJsonString() => json.encode(toJson());
}

class Category {
  int? id;
  String? category;
  String? type;

  Category({
    required this.id,
    required this.category,
    required this.type,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      category: json['category'],
      type: json['type'],
    );
  }

  Map<String?, dynamic> toJson() {
    return {
      'id': id,
      'category': category,
      'type': type,
    };
  }

  String toJsonString() => json.encode(toJson());
}

class Guest {
  int? id;
  String? name;
  String? role;
  int? eventId;

  Guest({
    required this.id,
    required this.name,
    required this.role,
    required this.eventId,
  });

  factory Guest.fromJson(Map<String, dynamic> json) {
    return Guest(
      id: json['id'],
      name: json['name'],
      role: json['role'],
      eventId: json['event_id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'role': role,
      'event_id': eventId,
    };
  }

  String toJsonString() => json.encode(toJson());
}
