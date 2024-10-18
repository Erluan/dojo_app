import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_app_template/app.dart';
import 'package:flutter_modular_app_template/app_module.dart';
import 'package:flutter_modular_app_template/infrastructure/core/configs/app_config.dart';
import 'package:flutter_modular_app_template/infrastructure/core/configs/environment.dart';
import 'package:flutter_modular_app_template/presentations/pages/dashboard/views/dashboard_view.dart';
import 'package:flutter_modular_app_template/presentations/pages/dashboard/widgets/storage_info_card.dart';
import 'package:flutter_modular_app_template/presentations/pages/home/views/home_view.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mocktail/mocktail.dart';

class ModularNavigateMock extends Mock implements IModularNavigator {}

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  binding.framePolicy = LiveTestWidgetsFlutterBindingFramePolicy.fullyLive;

  AppConfig prodAppConfig =
      AppConfig(appName: 'Dev - APPNAME', flavor: Environment.dev);

  testWidgets('Scrolling test', (tester) async {
    // Build our app and trigger a frame.

    // await tester.scrollUntilVisible(
    //   lastCard,
    //   500.0,
    //   // scrollable: listFinder,
    //   scrollable: scrollableFinder,
    // );
    await binding.traceAction(
      () async {
        print("Initializing app...");
        Widget app = await initializeApp(prodAppConfig);
        await tester.pumpWidget(
          ModularApp(module: AppModule(), child: app),
        );
        await tester.pumpAndSettle(Duration(seconds: 2));
        print("App initialized.");
        final button = find.byKey(Key('go_to_dash_button'));
        await tester.tap(button);
        await tester.pumpAndSettle(Duration(seconds: 2));
        print("Tapped Navigation Button.");

        // final listFinder = find.byKey(Key('singleChildScrollView'));
        final scrollableFinder = find.descendant(
          of: find.byKey(Key('singleChildScrollView')),
          matching: find.byType(Scrollable).at(0),
        );

        // final itemFinder = find.byKey(Key('item_50_text'));
        final lastCard = find.ancestor(
          of: find.text('Unknown'),
          matching: find.byType(StorageInfoCard),
        );

        await tester.pumpAndSettle(Duration(seconds: 2));
        await tester.scrollUntilVisible(
          lastCard,
          500.0,
          // scrollable: listFinder,
          scrollable: scrollableFinder,
        );
        await binding.takeScreenshot('screenshot-1');

        await tester.pumpAndSettle(Duration(seconds: 5));
      },
      reportKey: 'scrolling_timeline',
    );


    print("Scrolled!");
  });
}
