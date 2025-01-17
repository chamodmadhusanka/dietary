class AccountModel {
  String? user_id;
  String? first_name;
  String? last_name;
  String? user_name;
  String? email;
  String? password;

  AccountModel(this.first_name, this.last_name, this.user_name, this.email,
      this.password);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'first_name': first_name,
      'last_name': last_name,
      'user_name': user_name,
      'email': email,
      'password': password
    };
    return map;
  }

  AccountModel.fromMap(Map<String, dynamic> map) {
    // user_id = map['user_id'];
    user_name = map['user_name'];
    first_name = map['first_name'];
    last_name = map['last_name'];
    email = map['email'];
    password = map['password'];
  }
}
