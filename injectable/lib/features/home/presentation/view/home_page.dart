import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/features/home/presentation/bloc/action_cubit.dart';
import 'package:injectable/features/home/presentation/bloc/action_state.dart';
import 'package:injectable/features/profile/presentation/profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = GetIt.instance<ActionCubit>();
    return Scaffold(
      body: BlocListener<ActionCubit, ActionState>(
        listener: (context, state) {
          if (state is ActionStatePush) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfilePage()),
            );
          }
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Welcome'),
              ElevatedButton(
                onPressed: () {
                  cubit.action();
                },
                child: Text('Let\'s go!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
