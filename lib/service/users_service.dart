import 'dart:convert';

import 'package:dio/dio.dart';

import '../model/users_model.dart';

abstract class UsersService {
  UsersService(this.dio);
  final Dio dio;

  Future<List<UsersModel>?> fetchUsers();
}

class ReqresService extends UsersService {
  ReqresService(super.dio);

  @override
  Future<List<UsersModel>?> fetchUsers() async {
    throw UnimplementedError();
    final response = await dio
        .get("https://63581dddc27556d28937a265.mockapi.io/task/customer");

    
  }
}

// throw UnimplementedError();""

/*
final response = await dio
        .get("https://63581dddc27556d28937a265.mockapi.io/task/customer");

        */