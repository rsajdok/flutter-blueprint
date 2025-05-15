import 'package:flutter/material.dart';
import 'package:injectable/features/home/domain/repository/post_repository.dart';

class AppPostRepository implements PostRepository {
  AppPostRepository();

  @override
  Future<bool> action() {
    debugPrint('Action performed in AppPostRepository');
    return Future.value(true);
  }

  @override
  Future<String> getPost() async {
    debugPrint('Get post in AppPostRepository');
    return Future.value('Post from AppPostRepository');
  }
}
