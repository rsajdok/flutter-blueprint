import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blueprint/app/app.dart';
import 'package:flutter_blueprint/app_bloc_observer.dart';
import 'package:flutter_blueprint/di/configure.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();

  setupDependencies();

  runApp(
    const App(),
  );
}
