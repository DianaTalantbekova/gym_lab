import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_labb/src/infrastructure/utils/consts.dart';

import '../di.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      locale: const Locale('ru', 'RU'),
      debugShowCheckedModeBanner: false,
      routerConfig: getIt.get<GoRouter>(),
      supportedLocales: locales,
      localizationsDelegates: delegates,
    );
  }
}
