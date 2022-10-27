

import 'dart:convert';

List<UsersModel> usersModelFromJson(String str) => List<UsersModel>.from(json.decode(str).map((x) => UsersModel.fromJson(x)));

String usersModelToJson(List<UsersModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UsersModel {
    UsersModel({
        this.name,
        this.surname,
        this.email,
        this.phone,
        this.avatar,
        this.id,
    });

    String? name;
    String? surname;
    String? email;
    int? phone;
    String? avatar;
    String? id;

    factory UsersModel.fromJson(Map<String, dynamic> json) => UsersModel(
        name: json["name"],
        surname: json["surname"],
        email: json["email"],
        phone: json["phone"],
        avatar: json["avatar"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "surname": surname,
        "email": email,
        "phone": phone,
        "avatar": avatar,
        "id": id,
    };
}

/*
import 'package:json_annotation/json_annotation.dart';

class UsersModel {
  UsersModel({
    this.surname,
    this.id,
    this.name,
    this.avatar,
    this.email,
    this.phone,
  });

  final String? surname;
  final String? id;
  final String? name;
  final String? avatar;
  final String? email;
  final int? phone;

  factory UsersModel.fromJson(Map<String, dynamic> json) => UsersModel(
        surname: json["surname"],
        id: json["id"],
        name: json["name"],
        avatar: json["avatar"],
        email: json["email"],
        phone: json["phone"],
      );

  Map<String, dynamic> toJson() => {
        "surname": surname,
        "id": id,
        "name": name,
        "avatar": avatar,
        "email": email,
        "phone": phone,
      };
}
*/