// To parse this JSON data, do
//
//     final ArticleModel  = articleFromJson(jsonString);

import 'dart:convert';

ArticleModel articleFromJson(String str) =>
    ArticleModel.fromJson(json.decode(str));

String articleToJson(ArticleModel data) => json.encode(data.toJson());

class ArticleModel {
  int? id;
  String title;
  String content;
  int? adminId;
  Admin? admin;
  int? totalLike;
  DateTime? postedAt;
  dynamic filesId;
  String? status;
  dynamic like;

  ArticleModel({
    required this.id,
    required this.title,
    required this.content,
    this.adminId,
    this.admin,
    this.totalLike,
    this.postedAt,
    this.filesId,
    this.status,
    this.like,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) => ArticleModel(
        id: json["id"],
        title: json["title"],
        content: json["content"],
        adminId: json["admin_id"],
        admin: Admin.fromJson(json["admin"]),
        totalLike: json["total_like"],
        postedAt: DateTime.parse(json["posted_at"]),
        filesId: json["FilesId"],
        status: json["status"],
        like: json["like"],
      );

  DateTime? get dateTimeNow => null;

  get viewAmount => null;

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "content": content,
        "admin_id": adminId,
        "admin": admin?.toJson(),
        "total_like": totalLike,
        "posted_at": postedAt?.toIso8601String(),
        "FilesId": filesId,
        "status": status,
        "like": like,
      };
}

class Admin {
  int id;
  String name;
  String email;
  String token;
  String phoneNumber;
  int roleId;
  Role role;

  Admin({
    required this.id,
    required this.name,
    required this.email,
    required this.token,
    required this.phoneNumber,
    required this.roleId,
    required this.role,
  });

  factory Admin.fromJson(Map<String, dynamic> json) => Admin(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        token: json["token"],
        phoneNumber: json["phone_number"],
        roleId: json["role_id"],
        role: Role.fromJson(json["role"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "token": token,
        "phone_number": phoneNumber,
        "role_id": roleId,
        "role": role.toJson(),
      };
}

class Role {
  int id;
  String role;

  Role({
    required this.id,
    required this.role,
  });

  factory Role.fromJson(Map<String, dynamic> json) => Role(
        id: json["id"],
        role: json["role"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "role": role,
      };
}
