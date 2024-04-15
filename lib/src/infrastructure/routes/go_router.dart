import 'package:go_router/go_router.dart';

import '../../ui/screens/screens.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const LoginScreen();
      },
      routes: [],
    ),
    //ShellRoute(
    //   builder: (context, state, child) {
    //     return NavigationScreen(
    //       child: child,
    //     );
    //   },
    //routes: [
    // GoRoute(
    //   path: '/',
    //   pageBuilder: (context, state) => buildPageWithDefaultTransition(
    //     child: LoginScreen(
    //     ),
    //     context: context,
    //     state: state,
    //   ),
    //   routes: [
    //     GoRoute(
    //       path: "favourites_screen",
    //       pageBuilder: (context, state) {
    //         return buildPageWithDefaultTransition(
    //           context: context,
    //           state: state,
    //           child: FavouritesScreen(
    //             newsBloc: context.read<NewsBloc>(),
    //           ),
    //         );
    //       },
    //     ),
    //   ],
    // ),

    //],
    // ),
  ],
);