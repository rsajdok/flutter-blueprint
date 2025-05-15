sealed class ActionState {
  const ActionState();
}

class ActionStateInitial extends ActionState {
  const ActionStateInitial();
}

class ActionStatePush extends ActionState {
  const ActionStatePush();
}

class ActionStatePost extends ActionState {
  const ActionStatePost(this.post);
  final String post;
}
