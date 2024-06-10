class AppUser {
  String? id;
  String? email;
  String? password;
  String? weight;
  String? height;
  String? name;
  String? fcmToken;

  AppUser({
    this.id,
    this.email,
    this.password,
    this.weight,
    this.height,
    this.name,
    this.fcmToken,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['email'] = email;
    data['name'] = name;
    data['weight'] = weight;
    data['height'] = height;
    data['fcmToken'] = fcmToken;

    return data;
  }

  AppUser.fromJson(json, id) {
    id = id;
    email = json['email'];
    name = json['name'];
    weight = json['weight'];
    height = json['height'];
    fcmToken = json['fcmToken'];
  }
}
