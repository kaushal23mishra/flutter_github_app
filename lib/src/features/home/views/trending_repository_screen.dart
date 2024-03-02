import 'package:flutter/material.dart';
import 'package:flutter_github_app/src/core/common/common_app_bar.dart';
import 'package:flutter_github_app/src/core/common/common_heading.dart';
import 'package:flutter_github_app/src/core/common/common_shimmer_efffect.dart';
import 'package:flutter_github_app/src/core/common/common_strings.dart';
import 'package:flutter_github_app/src/features/home/controller/trending_controller.dart';
import 'package:flutter_github_app/src/features/home/views/repository_detail_screen.dart';
import 'package:flutter_github_app/src/utils/responsive_utils.dart';
import 'package:get/get.dart';
import 'components/repository_list_item.dart';

class TrendingRepositoriesScreen extends StatelessWidget {
  final _controller = Get.put(TrendingRepositoriesController());

  TrendingRepositoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double fem = SizeUtils.calculateSize1(context);
    return Scaffold(
      appBar: const CommonAppBar(),
      body: Obx(() {
        if (_controller.isLoading.value) {
          return buildShimmerList();
        } else if (_controller.hasError.value) {
          return Center(
            child: MediumText(
              text:
                  '${CommonStrings.errorPrefix}${_controller.errorMessage.value}',
            ),
          );
        } else {
          return ListView.builder(
            itemCount: _controller.repositories.length,
            itemBuilder: (context, index) {
              final repository = _controller.repositories[index];
              return GestureDetector(
                onTap: () => Get.to(() => RepositoryDetailScreen(repository),
                    arguments: repository),
                child: RepositoryListItem(repository: repository, fem: fem),
              );
            },
          );
        }
      }),
    );
  }
}
