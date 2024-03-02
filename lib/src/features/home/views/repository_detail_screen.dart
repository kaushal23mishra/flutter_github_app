import 'package:flutter/material.dart';
import 'package:flutter_github_app/src/core/common/common_app_bar.dart';
import 'package:flutter_github_app/src/core/common/common_button.dart';
import 'package:flutter_github_app/src/core/common/common_colors.dart';
import 'package:flutter_github_app/src/core/common/common_container.dart';
import 'package:flutter_github_app/src/core/common/common_heading.dart';
import 'package:flutter_github_app/src/core/common/common_strings.dart';
import 'package:flutter_github_app/src/core/common/common_text.dart';
import 'package:flutter_github_app/src/features/home/models/repository_model.dart';
import 'package:flutter_github_app/src/utils/date_utils.dart';
import 'package:flutter_github_app/src/utils/other_utils.dart';
import 'package:flutter_github_app/src/utils/responsive_utils.dart';
import 'package:flutter_github_app/src/widgets/text_widget.dart';

class RepositoryDetailScreen extends StatelessWidget {
  final RepositoryModel _repository;

  const RepositoryDetailScreen(this._repository, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //fem is used for relative size
    double fem = SizeUtils.calculateSize1(context);

    return Scaffold(
      appBar: CommonAppBar(text: capitalizeFirstLetter(_repository.name)),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0 * fem),
          child: CommonContainer(
            kChild: Padding(
              padding: EdgeInsets.all(16.0 * fem),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Image.network(_repository.owner.avatarUrl,
                fit: BoxFit.cover,
                height: 150 * fem,
                width: double.infinity,
              ),
                  SizedBox(height: 16 * fem),
                  const CommonHeading(
                    heading: CommonStrings.descriptionTitle,
                  ),
                  MediumText(
                      text: _repository.description ??
                          CommonStrings.noDescription),
                  FeedbackText(
                    text1: _repository.stargazersCount.toString(),
                    text2: _repository.forksCount.toString(),
                    text3: _repository.openIssuesCount.toString(),
                    fem: fem,
                  ),
                  MediumText(
                    text: '${CommonStrings.language}: ${_repository.language}',
                  ),
                  MediumText(
                    text:
                        '${CommonStrings.visibility}: ${capitalizeFirstLetter(_repository.visibility)}',
                  ),
                  MediumText(
                    text:
                        '${CommonStrings.createdAt}: ${formatDateTime(_repository.createdAt)}',
                  ),
                  MediumText(
                    text:
                        '${CommonStrings.updatedAt}: ${formatDateTime(_repository.updatedAt)}',
                  ),
                  const CommonHeading(
                    heading: CommonStrings.topics,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: _repository.topics.map((topic) {
                        return Padding(
                          padding: EdgeInsets.all(4.0 * fem),
                          child: Chip(
                            label: DisplayText(
                              text: capitalizeFirstLetter(topic),
                              color: CommonColors.white,
                              fontSize: 10 * fem,
                            ),
                            backgroundColor: CommonColors.pinkAccent,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  const CommonHeading(
                    heading: CommonStrings.cloneUrl,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        DisplayText(
                          text: _repository.cloneUrl,
                          color: CommonColors.blue,
                          fontSize: 10 * fem,
                        ),
                        SizedBox(width: 8 * fem),
                        CommonButton(
                          onPressFunction: () {
                            copyToClipboard(_repository.cloneUrl, context);
                          },
                          fem: fem,
                          text: CommonStrings.copyUrl,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
