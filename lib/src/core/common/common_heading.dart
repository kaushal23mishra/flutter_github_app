import 'package:flutter/cupertino.dart';
import 'package:flutter_github_app/src/utils/responsive_utils.dart';
import 'package:flutter_github_app/src/widgets/text_widget.dart';

class CommonHeading extends StatelessWidget {
  final String heading;

  const CommonHeading( {
    Key? key,
    required this.heading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // fem is used for relative size
    double fem = SizeUtils.calculateSize1(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6 * fem),
      alignment: Alignment.centerLeft,
      child: DisplayText(
        text: heading,
        fontSize: 12 * fem,
      ),
    );
  }
}
class CommonText extends StatelessWidget {
  final String text;
  const CommonText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    // fem is used for relative size
    double fem = SizeUtils.calculateSize1(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6 * fem),
      alignment: Alignment.centerLeft,
      child: DisplayText(
        text: text,
        fontSize: 9 * fem,
      ),
    );
  }
}
class MediumText extends StatelessWidget {
  final String text;
  const MediumText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    // fem is used for relative size
    double fem = SizeUtils.calculateSize1(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6 * fem),
      alignment: Alignment.centerLeft,
      child: DisplayText(
        text: text,
        fontSize: 10 * fem,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
