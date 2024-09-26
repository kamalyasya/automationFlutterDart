import 'package:aladinmobile/feature/auth/login/view/loginView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:aladinmobile/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testWidgets('End to End Login Aladin', (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle(const Duration(seconds: 4));

    var buttonSingIn = find.byKey(const Key('tfButSingIn'));
    await tester.tap(buttonSingIn);
    await tester.pumpAndSettle(const Duration(seconds: 2));

    var emailInput = find.byKey(const Key('tfEmail'));
    await tester.tap(emailInput);
    await tester.enterText(emailInput, 'test.device@misteraladin.com');
    await tester.pumpAndSettle(const Duration(seconds: 2));

    var passwordInput = find.byKey(const Key('tfPassword'));
    await tester.tap(passwordInput);
    await tester.enterText(passwordInput, 'MisterAladin_2019');
    await tester.pumpAndSettle(const Duration(seconds: 2));

    var loginButton = find.byKey(const Key('btnEmailLogin'));
    await tester.tap(loginButton);
    await tester.pumpAndSettle(const Duration(seconds: 20));
  });
}
