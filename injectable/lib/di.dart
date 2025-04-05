import 'package:get_it/get_it.dart';
import 'package:injectable/features/home/data/repository/app_post_repository.dart';
import 'package:injectable/features/home/domain/repository/post_repository.dart';
import 'package:injectable/features/home/presentation/bloc/action_cubit.dart';

void diInit() async {
  final getIt = GetIt.instance;

  getIt.registerLazySingleton<AppPostRepository>(() => AppPostRepository());
  getIt.registerLazySingleton<PostRepository>(() => getIt<AppPostRepository>());
  getIt.registerLazySingleton(() => ActionCubit(getIt<PostRepository>()));

  await getIt.allReady();
}
