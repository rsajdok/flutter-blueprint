import 'package:injectable/features/home/domain/repository/post_repository.dart';

class AppPostRepository implements PostRepository {
  AppPostRepository();

  @override
  Future<bool> action() {
    return Future.value(true);
  }
}
