import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_labb/src/data/repository/auth_repo.dart';
import 'package:gym_labb/src/infrastructure/utils/consts.dart';
import 'package:gym_labb/src/ui/blocs/auth/auth_bloc/auth_bloc.dart';
import 'package:gym_labb/src/ui/blocs/auth/login_cubit/login_cubit.dart';
import 'package:gym_labb/src/ui/screens/add_exercise/bloc/add_exercise_bloc.dart';
import 'package:gym_labb/src/ui/screens/training/bloc/training_bloc.dart';

import '../di.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => getIt.get<AuthenticationRepository>(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => getIt.get<TrainingBloc>()),
          BlocProvider(create: (context) => getIt.get<AuthBloc>()),
          BlocProvider(create: (context) => AddExerciseBloc()),
          BlocProvider(create: (context) => getIt.get<LoginCubit>())
        ],
        child: MaterialApp.router(
          locale: const Locale('ru', 'RU'),
          debugShowCheckedModeBanner: false,
          routerConfig: getIt.get<GoRouter>(),
          supportedLocales: locales,
          localizationsDelegates: delegates,
        ),
      ),
    );
  }
}
