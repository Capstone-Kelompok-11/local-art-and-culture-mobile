import 'dart:convert';

ModelRegister modelRegisterFromJson(Map<String, dynamic> str) =>
    ModelRegister.fromJson(str);

String modelRegisterToJson(ModelRegister data) => json.encode(data.toJson());

class ModelRegister {
  Data data;
  String message;

  ModelRegister({
    required this.data,
    required this.message,
  });

  factory ModelRegister.fromJson(Map<String, dynamic> json) => ModelRegister(
        data: Data.fromJson(json["data"]),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
        "message": message,
      };
}

class Data {
  String firstName;
  String lastName;
  String email;
  String password;
  String phoneNumber;
  String nik;
  String gender;
  String birthday;
  int roleId;
  Users users;

  Data(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.password,
      required this.phoneNumber,
      required this.nik,
      required this.gender,
      required this.birthday,
      required this.roleId,
      required this.users});

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
        password: json["password"],
        phoneNumber: json["phoneNumber"],
        nik: json["nik"],
        gender: json["gender"],
        birthday: json["birthday"],
        roleId: json["roleId"],
        users: Users.fromJson(json["users"]),
      );

  Map<String, dynamic> toJson() => {
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "password": password,
        "phoneNumber": phoneNumber,
        "nik": nik,
        "gender": gender,
        "birthday": birthday,
        "roleId": roleId,
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
  String gender;
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
    required this.gender,
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
