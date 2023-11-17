import 'package:http_app/model/user.dart';

void main() {
  User u1 =
      User(id: 1, username: "ssar", password: "1234", email: "ssar@nate.com");
  print(u1.username);

  Map<String, dynamic> u2 = {
    "id": 2,
    "username": "cos",
    "password": "1234",
    "email": "cos@nate.com"
  };
  print(u2["username"]);

  //3.map ->object 변환
  User u3 = User.fromJson(u2);
  print(u3.username);
}
