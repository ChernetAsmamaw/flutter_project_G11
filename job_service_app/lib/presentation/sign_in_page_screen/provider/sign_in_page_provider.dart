import 'package:flutter/material.dart';
import '../models/sign_in_page_model.dart';

/// A provider class for the SignInPageScreen.
///
/// This provider manages the state of the SignInPageScreen, including the
/// current signInPageModelObj

// ignore_for_file: must_be_immutable
class SignUpProvider extends ChangeNotifier {
  TextEditingController nameEditTextController = TextEditingController();
  TextEditingController emailEditTextController = TextEditingController();
  TextEditingController passwordEditTextController = TextEditingController();
  bool isShowPassword = true;
  bool agreeCheckBox = false;
  SignUpModel signUpModelObj = SignUpModel();

  @override
  void dispose() {
    super.dispose();
    nameEditTextController.dispose();
    emailEditTextController.dispose();
    passwordEditTextController.dispose();
  }

  void changePasswordVisibility() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }

  void changeCheckBox1(bool value) {
    agreeCheckBox = value;
    notifyListeners();
  }

  Future<void> signUp(BuildContext context) async {
    if (!agreeCheckBox) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please agree to the terms and conditions.')),
      );
      return;
    }

    if (_formKey.currentState!.validate()) {
      try {
        // Sign up the user using Firebase Authentication
        final UserCredential userCredential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailEditTextController.text,
          password: passwordEditTextController.text,
        );

        // Add the user to Firestore
        final UserModel user = UserModel(
          id: userCredential.user!.uid,
          username: nameEditTextController.text,
          password: passwordEditTextController.text, // never store passwords in plain text!
          email: emailEditTextController.text,
          roles: ['user'], // add user roles here
        );

        await FirebaseFirestore.instance.collection('users').add(user.toMap());

        // Show success dialog
        onTapSignUpButton(context);
      } on FirebaseAuthException catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(e.message ?? 'Error signing up')),
        );
      }
    }
  }
}