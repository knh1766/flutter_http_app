import 'package:dio/dio.dart';
import 'package:http_app/model/user.dart';

final dio = Dio();
void main() async {
  await fetchUser_test(1);
}

Future<User> fetchUser_test(int id) async {
  Response<dynamic> response =
      await dio.get("http://192.168.0.28:8080/user/$id");
  print(response.data);

  Map<String, dynamic> body = response.data as Map<String, dynamic>;
  print(body["username"]);

  User user = User.fromJson(body);
  return user;
}
