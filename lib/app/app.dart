import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blueprint/app_router.dart';
import 'package:flutter_blueprint/core/themes/app_theme.dart';
import 'package:flutter_blueprint/features/theme/cubit/theme_cubit.dart';
import 'package:get_it/get_it.dart';

class App extends StatefulWidget {
  const App({
    super.key,
  });

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> with WidgetsBindingObserver {
  late final AppRouter appRouter;

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    appRouter = GetIt.I.get<AppRouter>();

    super.initState();
  }

  @override
  void didChangePlatformBrightness() {
    context.read<ThemeCubit>().updateAppTheme();
    super.didChangePlatformBrightness();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /* return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            */
    //return Sizer(builder: (context, constraints, orientation) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(
          create: (context) => ThemeCubit(),
        ),
        // BlocProvider<CounterCubit>( create: (context) => CounterCubit(),),
      ],
      child: Builder(builder: (context) {
        return MaterialApp.router(
          // builder: DevicePreview.appBuilder,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: context
              .select((ThemeCubit themeCubit) => themeCubit.state.themeMode),
          debugShowCheckedModeBanner: false,
          // initialRoute: RoutePath.products.path,
          routerDelegate: appRouter.goRouter.routerDelegate,
          routeInformationParser: appRouter.goRouter.routeInformationParser,
          routeInformationProvider: appRouter.goRouter.routeInformationProvider,
        );
      }),
    );
  }
}
