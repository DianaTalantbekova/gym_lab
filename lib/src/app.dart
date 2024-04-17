import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_labb/src/infrastructure/utils/consts.dart';
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
    return BlocProvider(
      create: (context) => TrainingBloc(),
      child: MaterialApp.router(
        locale: const Locale('ru', 'RU'),
        debugShowCheckedModeBanner: false,
        routerConfig: getIt.get<GoRouter>(),
        supportedLocales: locales,
        localizationsDelegates: delegates,
      ),
    );
  }
}
