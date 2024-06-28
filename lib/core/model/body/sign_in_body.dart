class SignInBody {
  String? id;
  String? email;
  String? password;

  SignInBody({this.id, this.email, this.password});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['email'] = email;
    data['password'] = password;
    return data;
  }

  SignInBody.fromJson(json, id) {
    id = id;
    email = json['email'];
    password = json['password'];
  }
}
