import 'package:infinite_list/features/posts/data/service/api_service.dart';
import 'package:infinite_list/features/posts/domain/model/post.dart';
import 'package:infinite_list/features/posts/domain/repository/post_repository.dart';

class NetworkPostRepository implements PostRepository {
  NetworkPostRepository(this._apiService);

  final ApiService _apiService;

  @override
  Future<List<Post>> fetchPosts({required int startIndex}) {
    return _apiService.fetchPosts(startIndex: startIndex);
  }
}
