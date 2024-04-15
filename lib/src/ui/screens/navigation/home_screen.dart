import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_labb/blocs/bloc/trainings_bloc.dart';
import 'package:gym_labb/widgets/gl_bottom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TrainingsBloc(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: navigationShell,
        bottomNavigationBar: GLBottomNavigationBar(
          selectedIndex: navigationShell.currentIndex,
          onSelected: (value) {
            _goBranch(value);
          },
        ),
      ),
    );
  }
}
