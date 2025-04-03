import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:infinite_list/features/posts/data/repository/app_post_repository.dart';
import 'package:infinite_list/features/posts/data/repository/network_post_repository.dart';
import 'package:infinite_list/features/posts/data/service/api_service.dart';
import 'package:infinite_list/features/posts/presentaton/bloc/post_bloc.dart';
import 'package:infinite_list/features/posts/presentaton/bloc/post_event.dart';
import 'package:infinite_list/features/posts/presentaton/view/widgets/posts_list.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create:
            (_) => PostBloc(
              httpClient: http.Client(),
              posttRepository: AppPostRepository(
                remoteDataSource: NetworkPostRepository(ApiService()),
              ),
            )..add(PostFetched()),
        child: const PostsList(),
      ),
    );
  }
}
