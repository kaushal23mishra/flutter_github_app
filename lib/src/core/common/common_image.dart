//define constant assets used to set images in widgets...to be used globally

import 'package:flutter/material.dart';

class CommonImage {
  static const String path = 'assets/images/';
  static const String svgPath = 'assets/svg/';

  ///===================svg===================
  static const String bubblesIcon = "${svgPath}bubbles.svg";
  static const String failIcon = "${svgPath}fail.svg";
  static const String notificationBell = "${svgPath}notification_bell.svg";
  static const String info = "${svgPath}info.svg";

  ///================== png====================
  static const String clock = "${path}clock.png";

  ///================== icons====================
  static const crossIcon = Icon(Icons.close);
}
