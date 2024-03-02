import 'package:flutter/material.dart';

import 'common_colors.dart';
import 'common_heading.dart'; // Assuming this file contains CommonHeading widget

class FeedbackText extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final double fem;

  const FeedbackText({
    Key? key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.fem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, color: CommonColors.yellow),
        CommonText(text: text1), // Assuming CommonHeading is the appropriate widget for displaying text
        SizedBox(width: 16 * fem),
        Icon(Icons.call_split, color: CommonColors.green),
        CommonText(text:  text2),
        SizedBox(width: 16 * fem),
        Icon(Icons.error_outline, color: CommonColors.red),
        CommonText(text:  text3),
      ],
    );
  }
}
