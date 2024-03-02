import 'dart:ui';
import 'package:flutter/material.dart';

/// A custom scroll behavior that allows dragging with touch and mouse.
class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}



/// A utility class for calculating sizes based on screen width.
class SizeUtils {
  /// Calculates size 1 based on the current context.
  ///
  /// Returns a calculated size value.
  static double calculateSize1(BuildContext context) {
    return MediaQuery.of(context).size.width /
        375;
  }

  /// Calculates size 2 based on the current context.
  ///
  /// Returns a calculated size value, slightly adjusted from size 1.
  static double calculateSize2(BuildContext context) {
    double fem = calculateSize1(context);
    return fem * 0.97;
  }
}
