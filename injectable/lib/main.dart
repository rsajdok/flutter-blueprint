import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/di.dart';
import 'package:injectable/features/home/presentation/bloc/action_cubit.dart';
import 'package:injectable/features/home/presentation/view/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  diInit();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: const HomePage(),
      /*
      home: BlocProvider(
        create: (context) => GetIt.instance<ActionCubit>(),
        child: const HomePage(),
      ),
      */
      home: BlocProvider.value(
        value: GetIt.instance<ActionCubit>(),
        child: HomePage(),
      ),
    );
  }
}
