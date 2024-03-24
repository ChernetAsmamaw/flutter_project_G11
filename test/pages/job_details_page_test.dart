// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:job_application_portal/pages/job_details_page.dart';
// import 'package:mockito/mockito.dart';

// class MockFirebaseAuth extends Mock implements FirebaseAuth {}

// class MockFirebaseUser extends Mock implements User {
//   @override
//   String get uid => 'mock_user_id'; // Return a non-null string value
// }

// void main() {
//   group('JobDetailsPage', () {
//     late MockFirebaseAuth mockFirebaseAuth;
//     late MockFirebaseUser mockFirebaseUser;

//     setUp(() {
//       mockFirebaseAuth = MockFirebaseAuth();
//       mockFirebaseUser = MockFirebaseUser();
//       when(mockFirebaseAuth.currentUser).thenReturn(mockFirebaseUser);
//     });

//     testWidgets('renders job details correctly', (WidgetTester tester) async {
//       await tester.pumpWidget(
//         MaterialApp(
//           home: JobDetailsPage(
//             companyName: 'Acme Inc.',
//             jobTitle: 'Software Engineer',
//             jobLocation: 'New York, NY',
//             briefDescription: 'This is a brief description of the job.',
//             jobImage: 'assets/images/job_image.png',
//             createdBy: mockFirebaseUser.uid,
//             jobId: 'job_123',
//           ),
//         ),
//       );

//       // Verify that the job details are rendered correctly
//       expect(find.text('Software Engineer'), findsOneWidget);
//       expect(find.text('Acme Inc.'), findsOneWidget);
//       expect(find.text('New York, NY'), findsOneWidget);
//       expect(
//           find.text('This is a brief description of the job.'), findsOneWidget);
//       expect(find.byType(Image), findsOneWidget);
//       expect(find.text('Apply Now'), findsOneWidget);
//     });

//     testWidgets('edit and delete buttons are visible for current user',
//         (WidgetTester tester) async {
//       when(mockFirebaseUser.uid).thenReturn('user_123');

//       await tester.pumpWidget(
//         MaterialApp(
//           home: JobDetailsPage(
//             companyName: 'Acme Inc.',
//             jobTitle: 'Software Engineer',
//             jobLocation: 'New York, NY',
//             briefDescription: 'This is a brief description of the job.',
//             jobImage: 'assets/images/job_image.png',
//             createdBy: 'user_123', // Same as mockFirebaseUser.uid
//             jobId: 'job_123',
//           ),
//         ),
//       );

//       // Verify that the edit and delete buttons are visible
//       expect(find.byIcon(Icons.edit), findsOneWidget);
//       expect(find.byIcon(Icons.delete), findsOneWidget);
//     });

//     testWidgets('edit and delete buttons are not visible for other users',
//         (WidgetTester tester) async {
//       when(mockFirebaseUser.uid).thenReturn('user_456');

//       await tester.pumpWidget(
//         MaterialApp(
//           home: JobDetailsPage(
//             companyName: 'Acme Inc.',
//             jobTitle: 'Software Engineer',
//             jobLocation: 'New York, NY',
//             briefDescription: 'This is a brief description of the job.',
//             jobImage: 'assets/images/job_image.png',
//             createdBy: 'user_123', // Different from mockFirebaseUser.uid
//             jobId: 'job_123',
//           ),
//         ),
//       );

//       // Verify that the edit and delete buttons are not visible
//       expect(find.byIcon(Icons.edit), findsNothing);
//       expect(find.byIcon(Icons.delete), findsNothing);
//     });
//   });
// }
