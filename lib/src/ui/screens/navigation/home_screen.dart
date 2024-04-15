import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/gl_bottom_navigation_bar.dart';

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
