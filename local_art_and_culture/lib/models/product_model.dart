import 'dart:convert';

ModelProduct modelProductFromJson(Map<String, dynamic> str) =>
    ModelProduct.fromJson(str);

String modelProductToJson(ModelProduct data) => json.encode(data.toJson());

class ModelProduct {
  int? id;
  String? name;
  bool? stock;
  int? price;
  String? description;
  String? status;
  int? totalProduct;
  int? categoryId;
  int? creatorId;
  Creator? creator;
  Category? category;

  ModelProduct({
    this.id,
    this.name,
    this.stock,
    this.price,
    this.description,
    this.status,
    this.totalProduct,
    this.categoryId,
    this.creatorId,
    this.creator,
    this.category,
  });

  factory ModelProduct.fromJson(Map<String, dynamic> json) => ModelProduct(
        id: json["id"],
        name: json["name"],
        stock: json["totalProduct"] ?? false,
        price: json["price"],
        description: json["description"],
        status: json["status"],
        totalProduct: json["total_product"],
        categoryId: json["categoryId"],
        creatorId: json["creatorId"],
        creator: Creator.fromJson(json["creator"]),
        category: Category.fromJson(json["category"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "stock": stock,
        "price": price,
        "description": description,
        "status": status,
        "total_product": totalProduct,
        "categoryId": categoryId,
        "creatorId": creatorId,
        "creator": creator!.toJson(),
        "category": category!.toJson(),
      };
}

class Creator {
  int? id;
  String? outletName;
  String? email;
  String? phoneNumber;
  int? userId;
  int? roleId;
  int? addressId;

  Creator({
    this.id,
    this.outletName,
    this.email,
    this.phoneNumber,
    this.userId,
    this.roleId,
    this.addressId,
  });

  factory Creator.fromJson(Map<String, dynamic> json) => Creator(
        id: json["id"],
        outletName: json["outletName"],
        email: json["email"],
        phoneNumber: json["phoneNumber"],
        userId: json["userId"],
        roleId: json["roleId"],
        addressId: json["addressId"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "outletName": outletName,
        "email": email,
        "phoneNumber": phoneNumber,
        "userId": userId,
        "roleId": roleId,
        "addressId": addressId,
      };
}

class Category {
  int id;
  String category;
  String type;

  Category({
    required this.id,
    required this.category,
    required this.type,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        category: json["category"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "category": category,
        "type": type,
      };
}
