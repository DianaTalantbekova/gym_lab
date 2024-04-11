import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_labb/widgets/gl_bottom_navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body: navigationShell,
      bottomNavigationBar: GLBottomNavigationBar(
        selectedIndex: navigationShell.currentIndex,
        onSelected: (value) {
          _goBranch(value);
        },
      ),
    );
  }
}
