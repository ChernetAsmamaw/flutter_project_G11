import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:job_application_portal/pages/job_details_page.dart';
import 'package:job_application_portal/pages/login_page.dart';
import 'package:mockito/mockito.dart';

class MockFirebaseAuth extends Mock implements FirebaseAuth {}

class MockFirebaseUser extends Mock implements User {
  @override
  String get uid => 'mock_user_id'; // Return a non-null string value
}

void main() {
  group('loginPage', () {
    const emailKey = Key("emailTextField");
    const passwordKey = Key("passwordTextField");
    testWidgets("Testing Textfields", (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(home: LoginPage(onTap: () => "logged in!")),
      );
      await tester.pump();
      expect(find.byKey(emailKey), findsOneWidget);
      expect(find.byKey(passwordKey), findsOneWidget);
    });
  });
}
