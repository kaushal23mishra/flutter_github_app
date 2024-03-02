import 'package:flutter/material.dart';
import 'package:flutter_github_app/src/core/common/common_container.dart';
import 'package:flutter_github_app/src/core/common/common_heading.dart';
import 'package:flutter_github_app/src/core/common/common_strings.dart';
import 'package:flutter_github_app/src/core/common/common_text.dart';
import 'package:flutter_github_app/src/features/home/models/repository_model.dart';
import 'package:flutter_github_app/src/utils/other_utils.dart';

class RepositoryListItem extends StatelessWidget {
  final RepositoryModel repository;
  final double fem;

  const RepositoryListItem({
    required this.repository,
    required this.fem,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      kChild: ListTile(
        leading: CircleAvatar(
          radius: 30 * fem,

          child: Image.network(repository.owner.avatarUrl,fit: BoxFit.cover,),
          ),
        title: CommonHeading(
          heading: capitalizeFirstLetter(repository.name),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MediumText(
              text: repository.description ?? CommonStrings.noDescription,
            ),
            FeedbackText(text1: repository.stargazersCount.toString(), text2: repository.forksCount.toString(), text3: repository.openIssuesCount.toString(), fem: fem,)

          ],
        ),
      ),
    );
  }
}
