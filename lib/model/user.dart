//model->서버로 부터 받을 데이터 타입을 정의(서버측 테이블과동일하게 만들면됨)
class User {
  int? id;
  String? username;
  String? password;
  String? email;

  User({this.id, this.username, this.password, this.email});

  User.fromJson(Map<String, dynamic> json) {
    this.id = json["id"];
    this.username = json["username"];
    this.password = json["password"];
    this.email = json["email"];
  }
}
