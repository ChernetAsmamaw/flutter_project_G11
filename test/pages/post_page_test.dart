import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:job_application_portal/pages/post_page.dart';
import 'package:mockito/mockito.dart';

class MockFirebaseAuth extends Mock implements FirebaseAuth {}

class MockFirebaseUser extends Mock implements User {
  @override
  String get uid => 'mock_user_id'; // Return a non-null string value
}

class User {
  String name;

  User(this.name);
}

void main() {
  User mike;
  group('loginPage', () {
    const emailKey = Key("emailTextField");
    const passwordKey = Key("passwordTextField");
    testWidgets("Testing Textfields", (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
            home: PostPage(
          user: mike,
          key: const ValueKey("2"),
        )),
      );
      // await tester.pump();
      expect(find.byKey(emailKey), findsOneWidget);
      expect(find.byKey(passwordKey), findsOneWidget);
    });
    testWidgets("Testing buttons", (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
            home: PostPage(
          user: mike,
          key: const ValueKey("2"),
        )),
      );
      // await tester.pump();
      expect(find.byKey(const ValueKey("king")), findsAtLeast(1));
    });
    testWidgets("Testing Text widgets", (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
            home: PostPage(
          user: mike,
          key: const ValueKey("2"),
        )),
      );
      // await tester.pump();
      expect(find.byType(Text), findsAtLeast(10));
    });
    testWidgets("Testings AlertDialog", (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
            home: PostPage(
          user: mike,
          key: const ValueKey("2"),
        )),
      );
      // await tester.pump();
      expect(find.byKey(const ValueKey("q")), findsAtLeast(1));
    });
    testWidgets("Testings Sized boxes", (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
            home: PostPage(
          user: mike,
          key: const ValueKey("2"),
        )),
      );
      // await tester.pump();
      expect(find.byType(SizedBox), findsAtLeast(2));
    });
  });
}
