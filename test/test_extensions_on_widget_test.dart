import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ct_test_helpers/ct_test_helpers.dart';

main() {
  group("wrapWithMaterialApp()", () {
    testWidgets("there is a MaterialApp in the tree",
        (WidgetTester tester) async {
      Widget widget = Text("actual");
      await tester.pumpWidget(widget.wrapWithMaterialApp());
      final findMaterialApp = find.byType(MaterialApp);
      expect(findMaterialApp, findsOneWidget);
    });
    testWidgets("the original widget is in the tree",
        (WidgetTester tester) async {
      Widget widget = Text("actual");
      await tester.pumpWidget(widget.wrapWithMaterialApp());
      final findActualText = find.text("actual");
      expect(findActualText, findsOneWidget);
    });
    testWidgets("the original widget is a decendant of material app",
        (WidgetTester tester) async {
      Widget widget = Text("actual");
      await tester.pumpWidget(widget.wrapWithMaterialApp());
      final findDecendantText = find.descendant(
          of: find.byType(MaterialApp), matching: find.text("actual"));
      expect(findDecendantText, findsOneWidget);
    });
  });
}
