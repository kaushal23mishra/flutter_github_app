class RepositoryModel {
  final String name;
  final String? description;
  final int stargazersCount;
  final int forksCount;
  final int openIssuesCount;
  final String cloneUrl;
  final Owner owner;
  final String language;
  final String visibility;
  final String createdAt;
  final String updatedAt;
  final List<String> topics;

  RepositoryModel({
    required this.name,
    required this.description,
    required this.stargazersCount,
    required this.forksCount,
    required this.openIssuesCount,
    required this.cloneUrl,
    required this.owner,
    required this.language,
    required this.visibility,
    required this.createdAt,
    required this.updatedAt,
    required this.topics,
  });

  factory RepositoryModel.fromJson(Map<String, dynamic> json) {
    return RepositoryModel(
      name: json['name'],
      description: json['description'],
      stargazersCount: json['stargazers_count'],
      forksCount: json['forks_count'],
      openIssuesCount: json['open_issues_count'],
      cloneUrl: json['clone_url'],
      owner: Owner.fromJson(json['owner']),
      language: json['language'] ?? 'Unknown',
      visibility: json['visibility'] ?? 'Unknown',
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      topics: List<String>.from(json['topics'] ?? []),
    );
  }
}

class Owner {
  final String avatarUrl;

  Owner({required this.avatarUrl});

  factory Owner.fromJson(Map<String, dynamic> json) {
    return Owner(
      avatarUrl: json['avatar_url'],
    );
  }
}
