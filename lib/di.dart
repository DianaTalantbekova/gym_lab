import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_labb/src/data/repository/auth_repo.dart';
import 'package:gym_labb/src/infrastructure/routes/app_router.dart';
import 'package:gym_labb/src/ui/blocs/auth/auth_bloc/auth_bloc.dart';
import 'package:gym_labb/src/ui/blocs/auth/login_cubit/login_cubit.dart';

final getIt = GetIt.instance;

void setUpDependencies() {
  getIt.registerLazySingleton<GoRouter>(() => AppRouter.router);
  getIt.registerLazySingleton<AuthenticationRepository>(
    () => AuthenticationRepository(),
  );
  getIt.registerLazySingleton<AuthBloc>(
    () => AuthBloc(
      authRepo: getIt.get<AuthenticationRepository>(),
    ),
  );
  getIt.registerLazySingleton<LoginCubit>(
    () => LoginCubit(getIt.get<AuthenticationRepository>()),
  );
}
