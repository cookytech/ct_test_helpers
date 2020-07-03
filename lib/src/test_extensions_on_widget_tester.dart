import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Wrapper on extension functions on [WidgetTester]
///
/// contains extensions on widget tester to help with a more fluent api for us
extension TestExtensionsOnWidgetTester on WidgetTester {
  /// Sets the device size through a [Size] parameter.
  setDeviceSize(Size size) {
    this.binding.window.physicalSizeTestValue = size;
    this.binding.window.devicePixelRatioTestValue = 1.0;
  }
}
