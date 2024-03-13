import 'package:cloud_firestore/cloud_firestore.dart';

class UserData {
  final String email;
  final String uid;
  final String username;
  final String password;

  const UserData({
    required this.email,
    required this.uid,
    required this.username,
    required this.password,
  });

  Map<String, dynamic> toJson() => {
        "username": username,
        "uid": uid,
        "email": email,
        "password": password,
      };

  static UserData fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return UserData(
      email: snapshot['email'],
      uid: snapshot['uid'],
      username: snapshot['username'],
      password: snapshot['password'],
    );
  }
}
