import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_list/features/posts/domain/post.dart';
import 'package:infinite_list/features/posts/presentaton/bloc/post_event.dart';
import 'package:infinite_list/features/posts/presentaton/bloc/post_state.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

const _postLimit = 10;
// const throttleDuration = Duration(milliseconds: 100);

/*
EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}
*/

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc({required this.httpClient}) : super(const PostState()) {
    on<PostFetched>(
      _onFetched,
      // transformer: throttleDroppable(throttleDuration),
    );
  }

  final http.Client httpClient;

  Future<void> _onFetched(PostFetched event, Emitter<PostState> emit) async {
    if (state.hasReachedMax) return;

    try {
      final posts = await _fetchPosts(startIndex: state.posts.length);

      if (posts.isEmpty) {
        return emit(state.copyWith(hasReachedMax: true));
      }

      emit(
        state.copyWith(
          status: PostStatus.success,
          posts: [...state.posts, ...posts],
        ),
      );
    } catch (_) {
      emit(state.copyWith(status: PostStatus.failure));
    }
  }

  Future<List<Post>> _fetchPosts({required int startIndex}) async {
    final response = await httpClient.get(
      Uri.https('jsonplaceholder.typicode.com', '/posts', <String, String>{
        '_start': '$startIndex',
        '_limit': '$_postLimit',
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
    }
    throw Exception('error fetching posts');
  }
}

/*
  Future<List<String>> _fetchData(int page, int limit) async {
    // Simulate network call
    await Future.delayed(Duration(seconds: 2));
    if (page > 3) return [];
    return List.generate(
      limit,
      (index) => 'Item ${(page - 1) * limit + index + 1}',
    );
  }
*/
