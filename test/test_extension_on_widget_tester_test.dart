import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ct_test_helpers/ct_test_helpers.dart';

import 'test_helpers/size_texter.dart';

main() {
  group("setDeviceSize", () {
    testWidgets("sets the size of the device", (WidgetTester tester) async {
      tester.setDeviceSize(Size(20, 32));
      await tester.pumpWidget(Center());
      final sizeCenter = find.byType(Center);
      final Size size = tester.getSize(sizeCenter);
      expect(size.width, 20);
      expect(size.height, 32);
    });
    testWidgets("sets the right size, even for MaterialApp",
        (WidgetTester tester) async {
      tester.setDeviceSize(Size(25, 56));
      await tester.pumpWidget(SizeTexter().wrapWithMaterialApp());
      final findSizeTexter = find.text('Size(25.0, 56.0)');
      expect(findSizeTexter, findsOneWidget);
    });
  });
}
