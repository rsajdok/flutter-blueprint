abstract interface class PostRepository {
  Future<bool> action();
  Future<String> getPost();
}
