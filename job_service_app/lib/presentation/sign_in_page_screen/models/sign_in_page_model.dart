class UserModel {
  final String id;
  final String username;
  final String password;
  final String email;
  final List<String> roles;

  UserModel({
    required this.id,
    required this.username,
    required this.password,
    required this.email,
    required this.roles,
  });

  factory UserModel.fromMap(Map<String, dynamic> data) {
    return UserModel(
      id: data['id'],
      username: data['username'],
      password: data['password'],
      email: data['email'],
      roles: List<String>.from(data['roles']),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'username': username,
      'password': password,
      'email': email,
      'roles': roles,
    };
  }
}