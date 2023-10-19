class UserModel {
  final String id;
  final String fullName;
  final String email;
  final String password;
  final String fcmToken;
  List<String>? favoriteList;

  UserModel({
    required this.id,
    required this.fullName,
    required this.email,
    required this.password,
    required this.fcmToken,
    this.favoriteList,
  });

  factory UserModel.fromJson(Map<String, Object?> json) {
    return UserModel(
      id: json["id"] as String,
      fullName: json["fullName"] as String,
      email: json["email"] as String,
      password: json["password"] as String,
      favoriteList: json.containsKey("favoriteList")
          ? json["favoriteList"] as List<String>
          : null,
      fcmToken: json["tokenList"] as String,
    );
  }

  Map<String, Object?> toJson() => {
        "id": id,
        "fullName": fullName,
        "email": email,
        "password": password,
        "favoriteList": favoriteList,
        "token": fcmToken,
      };

  UserModel copyWith({
    String? id,
    String? fullName,
    String? email,
    String? password,
    String? fcmToken,
    List<String>? favoriteList,
  }) {
    return UserModel(
      id: id ?? this.id,
      fullName: fullName ?? this.fullName,
      email: email ?? this.email,
      password: password ?? this.password,
      fcmToken: fcmToken ?? this.fcmToken,
      favoriteList: favoriteList ?? this.favoriteList,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserModel &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          fullName == other.fullName &&
          email == other.email &&
          password == other.password &&
          fcmToken == other.fcmToken &&
          favoriteList == other.favoriteList;

  @override
  int get hashCode =>
      id.hashCode ^
      fullName.hashCode ^
      email.hashCode ^
      password.hashCode ^
      fcmToken.hashCode ^
      favoriteList.hashCode;

  @override
  String toString() {
    return 'UserModel{id: $id, fullName: $fullName, email: $email, password: $password, fcmToken: $fcmToken, favoriteList: $favoriteList}';
  }
}
