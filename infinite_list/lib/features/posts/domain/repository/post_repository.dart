import 'package:infinite_list/features/posts/domain/model/post.dart';

abstract interface class PostRepository {
  Future<List<Post>> fetchPosts({required int startIndex});
}
