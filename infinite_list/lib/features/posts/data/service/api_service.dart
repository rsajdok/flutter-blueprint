import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:infinite_list/features/posts/domain/model/post.dart';

class ApiService {
  final String _baseUrl = 'jsonplaceholder.typicode.com';

  Future<List<Post>> fetchPosts({required int startIndex}) async {
    const postLimit = 10;

    try {
      final response = await http.get(
        Uri.https(_baseUrl, '/posts', <String, String>{
          '_start': '$startIndex',
          '_limit': '$postLimit',
        }),
      );

      if (response.statusCode == 200) {
        final body = json.decode(response.body) as List;
        return body.map((dynamic json) {
          final map = json as Map<String, dynamic>;
          return Post(
            id: map['id'] as int,
            title: map['title'] as String,
            body: map['body'] as String,
          );
        }).toList();
      } else {
        throw Exception('Failed to load posts');
      }
    } on Exception catch (ex, st) {
      debugPrint('Failed to load posts: $ex, stacktrace: $st');
      rethrow;
    }
  }
}
