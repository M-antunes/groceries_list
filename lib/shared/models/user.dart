// ignore_for_file: prefer_if_null_operators

import 'dart:convert';

class User {
  final String id;
  final DateTime? createdAt;
  final String name;
  final String surname;
  final String email;
  final String? password;
  final String? confirmPassword;
  User({
    required this.id,
    this.createdAt,
    required this.name,
    required this.surname,
    required this.email,
    this.password,
    this.confirmPassword,
  });

  User copyWith({
    String? id,
    DateTime? createdAt,
    String? name,
    String? surname,
    String? email,
    String? password,
    String? confirmPassword,
  }) {
    return User(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      name: name ?? this.name,
      surname: surname ?? this.surname,
      email: email ?? this.email,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'createdAt': createdAt?.millisecondsSinceEpoch,
      'name': name,
      'surname': surname,
      'email': email,
      'password': password,
      'confirmPassword': confirmPassword,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      createdAt: map['createdAt'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['createdAt'])
          : null,
      name: map['name'],
      surname: map['surname'],
      email: map['email'],
      password: map['password'] != null ? map['password'] : null,
      confirmPassword:
          map['confirmPassword'] != null ? map['confirmPassword'] : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(id: $id, createdAt: $createdAt, name: $name, surname: $surname, email: $email, password: $password, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.name == name &&
        other.surname == surname &&
        other.email == email &&
        other.password == password &&
        other.confirmPassword == confirmPassword;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        createdAt.hashCode ^
        name.hashCode ^
        surname.hashCode ^
        email.hashCode ^
        password.hashCode ^
        confirmPassword.hashCode;
  }
}
