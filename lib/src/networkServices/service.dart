// repository_service.dart
import 'package:dio/dio.dart';
import 'package:flutter_github_app/src/features/home/models/repository_model.dart';

import 'api_end_points.dart';
//i have used simple api service to make api call with dio i have more complex code for api calling with reterofit and dio but using that here make it complex
class RepositoryService {
  final Dio _dio;

  RepositoryService() : _dio = Dio(); // Initialize Dio instance

  Future<List<RepositoryModel>> getTrendingRepositories() async {
    final apiClient = ApiClient(_dio); // Initialize ApiClient with Dio instance
    final repositoriesData = await apiClient.getTrendingRepositories();
    final repositories = repositoriesData.map((data) => RepositoryModel.fromJson(data)).toList();
    return repositories;
  }
}

class ApiClient {
  final Dio _dio;

  ApiClient(this._dio);

  Future<List<dynamic>> getTrendingRepositories() async {
    final response = await _dio.get(ApiEndPoints.baseUrl);
    if (response.statusCode == 200) {
      return response.data['items'];
    } else {
      throw DioException(
        requestOptions: response.requestOptions,
        response: response,
        error: 'HTTP Error: ${response.statusCode}',
      );
    }
  }
}
