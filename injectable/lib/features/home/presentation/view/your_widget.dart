import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/features/home/presentation/bloc/action_cubit.dart';
import 'package:injectable/features/home/presentation/bloc/action_state.dart';

class YourWidget extends StatelessWidget {
  const YourWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final cubit = GetIt.instance<ActionCubit>();

    return Column(
      children: [
        const SizedBox(height: 20),
        Builder(
          builder: (context) {
            final post = context.select(
              (ActionCubit bloc) =>
                  bloc.state is ActionStatePost
                      ? (bloc.state as ActionStatePost).post
                      : 'empty',
            );
            return Center(
              child: Column(
                children: [
                  Text('Press the button to perform getPost'),
                  SizedBox(height: 20),
                  Text('Post: $post'),
                ],
              ),
            );
          },
        ),
        ElevatedButton(
          onPressed: () {
            debugPrint('YourWidget: FloatingActionButton pressed');
            cubit.getPost();
          },
          child: const Text('Get Post'),
        ),
      ],
    );
  }
}
