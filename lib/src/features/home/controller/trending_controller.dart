// trending_repositories_controller.dart
import 'package:flutter_github_app/src/features/home/models/repository_model.dart';
import 'package:get/get.dart';

import '../../../networkServices/service.dart';

class TrendingRepositoriesController extends GetxController {
  late final RepositoryService _repositoryService;

  var isLoading = true.obs;
  var hasError = false.obs;
  var errorMessage = ''.obs;
  var repositories = <RepositoryModel>[].obs;

  @override
  void onInit() {
    _repositoryService = RepositoryService(); // Initialize RepositoryService
    _fetchTrendingRepositories();
    super.onInit();
  }

  void _fetchTrendingRepositories() async {
    try {
      isLoading(true);
      final repos = await _repositoryService.getTrendingRepositories();
      repositories.assignAll(repos);
    } catch (e) {
      hasError(true);
      errorMessage.value = e.toString();
    } finally {
      isLoading(false);
    }
  }
}
