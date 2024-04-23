import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_labb/src/data/repository/auth_repo.dart';
import 'package:gym_labb/src/data/repository/trainings_repo_impl.dart';
import 'package:gym_labb/src/data/sources/trainings_firebase_data_source.dart';
import 'package:gym_labb/src/domain/repository/trainings_repo.dart';
import 'package:gym_labb/src/infrastructure/routes/app_router.dart';
import 'package:gym_labb/src/ui/blocs/auth/auth_bloc/auth_bloc.dart';
import 'package:gym_labb/src/ui/blocs/auth/login_cubit/login_cubit.dart';
import 'package:gym_labb/src/ui/blocs/workout_bloc/workout_bloc.dart';
import 'package:gym_labb/src/ui/screens/training/bloc/training_bloc.dart';

final getIt = GetIt.instance;

void setUpDependencies() {
  getIt.registerLazySingleton<GoRouter>(
    () => AppRouter.router,
  );
  getIt.registerLazySingleton<AuthenticationRepository>(
    () => AuthenticationRepository(),
  );
  getIt.registerLazySingleton<AuthBloc>(
    () => AuthBloc(authRepo: getIt.get<AuthenticationRepository>()),
  );
  getIt.registerLazySingleton<LoginCubit>(
    () => LoginCubit(getIt.get<AuthenticationRepository>()),
  );
  getIt.registerFactory<TrainingBloc>(
    () => TrainingBloc(getIt.get<TrainingsRepository>()),
  );
  getIt.registerLazySingleton<FirebaseFirestore>(
    () => FirebaseFirestore.instance,
  );
  getIt.registerLazySingleton<TrainingsRemoteDataSource>(
    () => TrainingsFirebaseDataSource(getIt.get<FirebaseFirestore>()),
  );
  getIt.registerLazySingleton<TrainingsRepository>(
    () => TrainingsRepositoryImpl(getIt.get<TrainingsRemoteDataSource>()),
  );
  getIt.registerFactory<WorkoutBloc>(
    () => WorkoutBloc(getIt.get<TrainingsRepository>()),
  );
}
