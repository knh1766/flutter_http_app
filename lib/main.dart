import 'package:flutter/material.dart';
import 'package:http_app/repository/user_repository.dart';

import 'model/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserListPage(),
    );
  }
}

class UserListPage extends StatelessWidget {
  const UserListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<User>>(
        future: UserRepository().fetchUserList(),
        builder: (context, snapshot) {
          print("그림그려짐!!!!!!!!!!!!!!!!!!!!!");

          if (snapshot.hasData) {
            //통신이끝남
            List<User> userList = snapshot.data ?? [];
            return ListView.builder(
              itemCount: userList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Text("${userList[index].id}"),
                  title: Text("${userList[index].username}"),
                  subtitle: Text("${userList[index].email}"),
                );
              },
            );
          } else {
            //통신중인상태
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
