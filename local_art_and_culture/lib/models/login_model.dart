import 'dart:convert';

ModelSignIn modelSignInFromJson(Map<String, dynamic> str) =>
    ModelSignIn.fromJson(str);

String modelSignInToJson(ModelSignIn data) => json.encode(data.toJson());

class ModelSignIn {
  Data data;
  String message;

  ModelSignIn({
    required this.data,
    required this.message,
  });

  factory ModelSignIn.fromJson(Map<String, dynamic> json) => ModelSignIn(
        data: Data.fromJson(json["data"]),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
        "message": message,
      };
}

class Data {
  int id;
  String outletName;
  String email;
  String phoneNumber;
  int userId;
  int roleId;
  String? addressId;
  Users users;
  Role role;

  Data({
    required this.id,
    required this.outletName,
    required this.email,
    required this.phoneNumber,
    required this.userId,
    required this.roleId,
    this.addressId,
    required this.users,
    required this.role,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        outletName: json["outletName"],
        email: json["email"],
        phoneNumber: json["phoneNumber"],
        userId: json["userId"],
        roleId: json["roleId"],
        addressId: json["addressId"],
        users: Users.fromJson(json["users"]),
        role: Role.fromJson(json["role"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "outletName": outletName,
        "email": email,
        "phoneNumber": phoneNumber,
        "userId": userId,
        "roleId": roleId,
        "addressId": addressId,
        "users": users.toJson(),
        "role": role.toJson(),
      };
}

class Users {
  int id;
  String firstName;
  String lastName;
  String username;
  String email;
  String token;
  String phoneNumber;
  String nik;
  String? gender;
  String birthday;

  Users({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.email,
    required this.token,
    required this.phoneNumber,
    required this.nik,
    this.gender,
    required this.birthday,
  });

  factory Users.fromJson(Map<String, dynamic> json) => Users(
        id: json["id"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        username: json["username"],
        email: json["email"],
        token: json["token"],
        phoneNumber: json["phoneNumber"],
        nik: json["nik"],
        gender: json["gender"],
        birthday: json["birthday"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "firstName": firstName,
        "lastName": lastName,
        "username": username,
        "email": email,
        "token": token,
        "phoneNumber": phoneNumber,
        "nik": nik,
        "gender": gender,
        "birthday": birthday,
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
