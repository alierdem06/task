import 'package:flutter/material.dart';
import 'model/users_model.dart';

class DetayPage extends StatelessWidget {
  final UsersModel user;
  const DetayPage({super.key, required this.user});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.network(
                "${user.avatar}",
              ),
            ),
            Text(
              ("İsim Soyisim : ${user.name}") + (" ${user.surname}"),
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            const Text(
              "Kişisel Bilgiler",
              style: TextStyle(fontSize: 20, backgroundColor: Colors.green),
            ),
            Text(
              "Email : ${user.email}",
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              "Phone : ${user.phone}",
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              "Id : ${user.id}",
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
  /* */