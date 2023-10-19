
class Admin {
  final String id;
  final String firstName;
  final String email;
  final String password;
  final String lastName;
  final String imageAdmin;
  final String phoneNumber;


  Admin({
    required this.id,
    required this.firstName,
    required this.email,
    required this.password,
    required this.lastName,
    required this.imageAdmin,
    required this.phoneNumber,
  });

  factory Admin.fromJson(Map<String, Object?> json) {
    return Admin(
      id: json["id"] as String,
      firstName: json["firstName"] as String,
      email: json["email"] as String,
      password: json["password"] as String,
      lastName: json["lastName"] as String,
      imageAdmin: json["imageAdmin"] as String,
      phoneNumber: json["phoneNumber"] as String,
    );
  }
  Map<String, Object?> toJson() => {
    "id" : id,
    "firstName" : firstName,
    "email" : email,
    "password" : password,
    "lastName" : lastName,
    "imageAdmin": imageAdmin,
    "phoneNumber": phoneNumber
  };
  Admin copyWith({
    String? id,
    String? firstName,
    String? email,
    String? password,
    String? lastName,
    String? imageAdmin,
    String? phoneNumber,
  }) {
    return Admin(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      email: email ?? this.email,
      password: password ?? this.password,
      lastName: lastName ?? this.lastName,
      imageAdmin: imageAdmin ?? this.imageAdmin,
      phoneNumber: phoneNumber ?? this.phoneNumber,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Admin &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          firstName == other.firstName &&
          email == other.email &&
          password == other.password &&
          lastName == other.lastName &&
          imageAdmin == other.imageAdmin &&
          phoneNumber == other.phoneNumber;

  @override
  int get hashCode =>
      id.hashCode ^
      firstName.hashCode ^
      email.hashCode ^
      password.hashCode ^
      lastName.hashCode ^
      imageAdmin.hashCode ^
      phoneNumber.hashCode;

  @override
  String toString() {
    return 'Admin{id: $id, firstName: $firstName, email: $email, password: $password, lastName: $lastName, imageAdmin: $imageAdmin, phoneNumber: $phoneNumber}';
  }
}

