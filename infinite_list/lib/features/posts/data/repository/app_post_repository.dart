import 'package:infinite_list/features/posts/data/repository/network_post_repository.dart';
import 'package:infinite_list/features/posts/domain/model/post.dart';
import 'package:infinite_list/features/posts/domain/repository/post_repository.dart';

class AppPostRepository implements PostRepository {
  AppPostRepository({
    required NetworkPostRepository remoteDataSource,
    // required LocalProductRepository localDataSource,
  }) : _remoteDataSource = remoteDataSource;
  // _localDataSource = localDataSource;

  final NetworkPostRepository _remoteDataSource;
  // final LocalPosttRepository _localDataSource;

  @override
  Future<List<Post>> fetchPosts({required int startIndex}) async {
    // Retrieve posts from local data source
    // final localProducts = await _localDataSource.fetchProducts();

    // Check if local data source has data
    /*
    if (localProducts.isNotEmpty) {
      return localProducts;
    } else {
    */
    // If local data source is empty, fetch from API and cache it locally
    final apiProducts = await _remoteDataSource.fetchPosts(
      startIndex: startIndex,
    );
    // await _localDataSource.cacheProducts(apiProducts);
    return apiProducts;
  }
}
