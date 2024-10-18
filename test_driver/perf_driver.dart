import 'dart:io';
import 'package:flutter_driver/flutter_driver.dart' as driver;
import 'package:integration_test/integration_test_driver_extended.dart';

Future<void> main() async {

  return integrationDriver(
    onScreenshot: (String name, List<int> image, [Map<String, Object?>? args]) async {
      final File imageFile = await File('screenshots/$name.png')
          .create(recursive: true);
      imageFile.writeAsBytesSync(image);
      return true;
    },
    responseDataCallback: (data) async {
      if (data != null) {
        final timeline = driver.Timeline.fromJson(
          data['scrolling_timeline'] as Map<String, dynamic>,
        );

        // Convert the Timeline into a TimelineSummary that's easier to read and understand.
        final summary = driver.TimelineSummary.summarize(timeline);

        // Write the entire timeline to disk in a JSON format.
        await summary.writeTimelineToFile(
          'scrolling_timeline',
          pretty: true,
          includeSummary: true,
        );
      }
    },
  );
}