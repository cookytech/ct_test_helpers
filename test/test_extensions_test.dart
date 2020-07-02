import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ct_test_helpers/ct_test_helpers.dart';

main() {
  group("wrap with material app", () {
    testWidgets("there is MaterialApp in the tree",
        (WidgetTester tester) async {
      Widget widget = Text("actual");
      await tester.pumpWidget(widget.wrapWithMaterialApp());
      final findMaterialApp = find.byType(MaterialApp);
      expect(findMaterialApp, findsOneWidget);
    });
  });
}
