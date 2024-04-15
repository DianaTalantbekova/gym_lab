import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_labb/src/infrastructure/routes/go_router.dart';

final getIt = GetIt.instance;

void setUpDependencies() {
  getIt.registerLazySingleton<GoRouter>(() => router);
}