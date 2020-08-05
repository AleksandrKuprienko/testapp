import 'package:flutter_test/flutter_test.dart';

import 'package:testapp/main.dart';


void main() {
  testWidgets('Is text on display?', (WidgetTester tester) async{
    //Build our app and trigger a frame.
    await tester.pumpWidget(SolidTestApp());

    //Fint Text widget on screen
    expect(find.text('Hey there'), findsOneWidget);
  });
}