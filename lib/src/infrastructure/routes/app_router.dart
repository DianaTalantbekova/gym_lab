import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../app.dart';
import '../../ui/screens/add_exercise/add_exercise_screen.dart';
import '../../ui/screens/auth/inital/inital_screens.dart';
import '../../ui/screens/navigation/home_screen.dart';
import '../../ui/screens/screens.dart';
import '../../ui/screens/training/training_details_screen.dart';

mixin AppRouter on State<MyApp> {
  static final _rootKey = GlobalKey<NavigatorState>();
  static final _trainingKey = GlobalKey<NavigatorState>();
  static final _historyKey = GlobalKey<NavigatorState>();
  static final _circuitTrainingKey = GlobalKey<NavigatorState>();
  static final _profileKey = GlobalKey<NavigatorState>();

  final GoRouter router = GoRouter(
    navigatorKey: _rootKey,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const InitialScreen(),
      ),
      GoRoute(
        name: LoginScreen.route,
        path: "/${LoginScreen.route}",
        builder: (context, state) => const LoginScreen(),
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return HomeScreen(
            navigationShell: navigationShell,
          );
        },
        branches: [
          StatefulShellBranch(
            navigatorKey: _trainingKey,
            routes: [
              GoRoute(
                name: TrainingScreen.route,
                path: "/${TrainingScreen.route}",
                builder: (context, state) => const TrainingScreen(),
                routes: [
                  GoRoute(
                    name: TrainingDetailsScreen.route,
                    path: TrainingDetailsScreen.route,
                    builder: (context, state) => const TrainingDetailsScreen(),
                  ),
                  GoRoute(
                    parentNavigatorKey: _rootKey,
                    name: AddExerciseScreen.route,
                    path: AddExerciseScreen.route,
                    builder: (context, state) => const AddExerciseScreen(),
                    routes: [
                      GoRoute(
                        parentNavigatorKey: _rootKey,
                        name: ExerciseInfoScreen.route,
                        path: ExerciseInfoScreen.route,
                        builder: (context, state) => const ExerciseInfoScreen(),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _historyKey,
            routes: [
              GoRoute(
                name: StatisticsScreen.route,
                path: "/${StatisticsScreen.route}",
                builder: (context, state) => const StatisticsScreen(),
                routes: [
                  GoRoute(
                    name: ReportScreen.route,
                    path: ReportScreen.route,
                    builder: (context, state) => const ReportScreen(),
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _circuitTrainingKey,
            routes: [
              GoRoute(
                name: CircuitTrainingScreen.route,
                path: "/${CircuitTrainingScreen.route}",
                builder: (context, state) => const CircuitTrainingScreen(),
                routes: [
                  GoRoute(
                    parentNavigatorKey: _rootKey,
                    name: WorkProcessScreen.route,
                    path: WorkProcessScreen.route,
                    builder: (context, state) => const WorkProcessScreen(),
                  ),
                  GoRoute(
                    parentNavigatorKey: _rootKey,
                    name: TimeoutProcessPage.route,
                    path: TimeoutProcessPage.route,
                    builder: (context, state) => const TimeoutProcessPage(),
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _profileKey,
            routes: [
              GoRoute(
                name: ProfileScreen.route,
                path: "/${ProfileScreen.route}",
                builder: (context, state) => const ProfileScreen(),
                routes: [
                  GoRoute(
                    name: ProfileDetailsScreen.route,
                    path: ProfileDetailsScreen.route,
                    builder: (context, state) => const ProfileDetailsScreen(),
                  ),
                  GoRoute(
                    parentNavigatorKey: _rootKey,
                    name: PremiumScreen.route,
                    path: PremiumScreen.route,
                    builder: (context, state) => const PremiumScreen(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );

  GoRouter get routerConfig => router;
}
