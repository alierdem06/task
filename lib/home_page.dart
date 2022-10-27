import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:task_app/detay_page.dart';
import 'model/users_model.dart';

class TaskHome extends StatefulWidget {
  const TaskHome({super.key});

  @override
  State<TaskHome> createState() => _TaskHomeState();
}

class _TaskHomeState extends State<TaskHome> {
  List<UsersModel>? users;
  void initState() {
    super.initState();
    fetchPostUsers();
  }

  @override
  Future<void> fetchPostUsers() async {
    final response = await Dio()
        .get("https://63581dddc27556d28937a265.mockapi.io /task/customer/5");
    if (response.statusCode == HttpStatus.ok) {
      final datas = response.data;
      if (datas is List) {
        setState(() {
          users = datas.map((e) => UsersModel.fromJson(e)).toList();
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: users?.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: FadeInImage.assetNetwork(
              placeholder: 'assets/gif/loading_icon.gif',
              image: users?[index].avatar ?? ""),
          title: Text(
            (users?[index].name ?? "") + (" ") + (users?[index].surname ?? ""),
          ),
          subtitle: Text(
            (users?[index].email ?? "") +
                (" ") +
                (users?[index].phone ?? "").toString(),
          ),
          trailing: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetayPage(user: users![index]),
                ),
              );
            },
            child: const Text("Detay"),
          ),
        );
      },
    ));
  }
}

/*ListView.builder(
        itemCount: users?.length ?? 0,
        itemBuilder: (context, index) {
          return ListTile(
            leading: FadeInImage.assetNetwork(
                placeholder: "assets/gif/loading_icon.gif",
                image: users?[index].avatar ?? ""),
            title: Text((users?[index].name ?? "") +
                ("") +
                (users?[index].surname ?? "")),
            subtitle: Text(
              (users?[index].email ?? "") +
                  (" ") +
                  (users?[index].phone ?? "").toString(),
            ),
            trailing: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetayPage(user: users![index]),
                  ),
                );
              },
              child: const Text("Detay"),
            ),
          );
           Text("data");
        },
      ), */



      /*
      
      void initState() {
    super.initState();
    fetchPostUsers();
  }
 
  Future<void> fetchPostUsers() async {
  
      final response = await Dio()
          .get("https://63581dddc27556d28937a265.mockapi.io /task/customer/5");
      if (response.statusCode == HttpStatus.ok) {
      final datas = response.data;
      if (datas is List) {
        setState(() {
          users = datas.map((e) => UsersModel.fromJson(e)).toList();
        });
      }
    }
  }

      */ 