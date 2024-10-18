// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_modular_app_template/infrastructure/core/configs/app_config.dart';
import 'package:flutter_modular_app_template/infrastructure/core/configs/environment.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_modular_app_template/app.dart';

void main() {
  AppConfig prodAppConfig =
  AppConfig(appName: 'Dev - APPNAME', flavor: Environment.dev);


  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    Widget app = await initializeApp(prodAppConfig);
    // Build our app and trigger a frame.
    await tester.pumpWidget(app);

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
