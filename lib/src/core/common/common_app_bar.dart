import 'package:flutter/material.dart';
import 'package:flutter_github_app/src/core/common/common_strings.dart';
import 'package:flutter_github_app/src/widgets/text_widget.dart';
import 'common_colors.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? text;

  const CommonAppBar({
    Key? key,
    this.text,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: DisplayText(
        text: text ?? CommonStrings.trendingRepositoriesTitle,
        color: CommonColors.white,
      ),
      backgroundColor: CommonColors.appBarBackground,
    );
  }
}
