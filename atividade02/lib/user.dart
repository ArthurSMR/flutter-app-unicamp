class User {
  String _username;
  String _password;
  String _email;
  String _gender;
  int _newsToEmail = 0;

  User(this._username, this._password, this._email, this._gender,
      this._newsToEmail);

  User.fromMap(map) {
    this._username = map["username"];
    this._password = map["password"];
    this._email = map["email"];
    this._gender = map["gender"];
    this._newsToEmail = map["newsToEmail"];
  }

  String get username => _username;
  String get password => _password;
  String get email => _email;
  String get gender => _gender;
  int get newsToEmail => _newsToEmail;

  set username(String newUsername) => this._username = newUsername;
  set password(String newPassword) => this._password = newPassword;
  set email(String newEmail) => this._email = newEmail;
  set gender(String newGender) => this._gender = newGender;
  set newsToEmail(int newOption) => this._newsToEmail = newOption;

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["username"] = _username;
    map["password"] = _password;
    map["email"] = _email;
    map["gender"] = _gender;
    map["newsToEmail"] = _newsToEmail;

    return map;
  }
}
