import 'package:job_service_app/auth/auth_methods.dart';
import 'package:job_service_app/auth/userdata.dart';
import 'package:flutter/widgets.dart';

class UserProvider with ChangeNotifier {
  UserData? _user;
  final AuthMethods _authMethods = AuthMethods();

  UserData? get getUser => _user;
  Future<void> refreshUser() async {
    UserData user = await _authMethods.getUserDetails();
    _user = user;
    notifyListeners();
  }
}
