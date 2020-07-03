import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ct_test_helpers/ct_test_helpers.dart';

main() {
  group("setDeviceSize", () {
    testWidgets("sets the size of the device", (WidgetTester tester) async {
      await tester.setDeviceSize(Size(20, 32));
      await tester.pumpWidget(Center(
        key: ValueKey("size tester"),
      ));
      final sizeCenter = find.byKey(ValueKey("size tester"));
      final Size size = tester.getSize(sizeCenter);
      expect(size.width, 20);
      expect(size.height, 32);
    });
  });
}
