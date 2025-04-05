import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/features/home/domain/repository/post_repository.dart';
import 'package:injectable/features/home/presentation/bloc/action_state.dart';

class ActionCubit extends Cubit<ActionState> {
  ActionCubit(PostRepository repository)
    : _repository = repository,
      super(ActionStateInitial());

  final PostRepository _repository;

  void action() async {
    final result = await _repository.action();

    if (result) {
      emit(ActionStatePush());
    }
  }
}
