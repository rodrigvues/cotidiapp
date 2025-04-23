import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class LayoutScaffold extends StatelessWidget {
  const LayoutScaffold({
    required this.navigationShell,
    Key? key,
  }) : super(key: key ?? const ValueKey<String>('LayoutScaffold'));

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      backgroundColor: Colors.grey[850],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(25.0),
            topLeft: Radius.circular(25.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
            backgroundColor: Colors.black,
            activeColor: Colors.white,
            gap: 8,
            tabBackgroundColor: Colors.grey.shade900,
            color: Colors.white70,
            padding: EdgeInsets.all(16),
            selectedIndex: navigationShell.currentIndex,
            onTabChange: (index) {
              // Este método será chamado quando uma aba for selecionada
              navigationShell.goBranch(index);
            },
            tabs: const [
              GButton(icon: Icons.home_rounded, text: 'Home'),
              GButton(icon: Icons.alarm, text: 'Relógio'),
              GButton(icon: Icons.calendar_month, text: 'Planner'),
              GButton(icon: Icons.settings, text: 'Configurações'),
            ],
          ),
        ),
      ),
    );
  }
}