import 'package:flutter/cupertino.dart';
import 'package:flutter_github_app/src/core/common/common_colors.dart';
import 'package:flutter_github_app/src/core/common/common_shades.dart';
import 'package:flutter_github_app/src/utils/responsive_utils.dart';

class CommonContainer extends StatefulWidget {
  final Widget? kChild;

  const CommonContainer({Key? key, this.kChild}) : super(key: key);

  @override
  State<CommonContainer> createState() => _CommonContainerState();
}

class _CommonContainerState extends State<CommonContainer> {
  @override
  Widget build(BuildContext context) {
    //fem is used for relative size
    double fem = SizeUtils.calculateSize1(context);
    return Container(
      decoration: BoxDecoration(
        color: CommonColors.white,
        borderRadius: BorderRadius.circular(8 * fem),
        boxShadow: [
          CommonShades.mainContainerShadow
        ],
      ),
      margin: EdgeInsets.symmetric(horizontal: 8 * fem, vertical: 4 * fem),
      child: widget.kChild,
    );
  }
}


