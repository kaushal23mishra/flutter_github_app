import 'package:flutter/material.dart';
import 'package:flutter_github_app/src/core/common/common_colors.dart';
import 'package:flutter_github_app/src/widgets/text_widget.dart';

class CommonButton extends StatelessWidget {
  final VoidCallback onPressFunction;
  final double fem;
  final String text;

  const CommonButton({
    Key? key,
    required this.onPressFunction,
    required this.fem,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: CommonColors.buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0 * fem),
        ),
      ),
      onPressed: onPressFunction,
      child: DisplayText(text:text,fontSize: 8*fem,), // Removed unnecessary 'const' keyword
    );
  }
}
