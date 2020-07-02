import 'package:flutter/material.dart';

/// Wrapper for extension functions on [Widget].
/// Contains the essential extension functions used to make testing easier and more
/// fluent for us
extension TextExtensions on Widget {
  /// Wraps any widget with material app
  Widget wrapWithMaterialApp() => MaterialApp(home: this);
}
