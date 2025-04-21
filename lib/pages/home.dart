import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.grey[850],
      body: Container(
        child: Center(
          child: Text(
            'Hey',
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      bottomNavigationBar: Gnav(),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text(
        'CotidiApp',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.grey[850],
      elevation: 0.0,
      centerTitle: true,
    );
  }
}

class Gnav extends StatelessWidget {
  const Gnav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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

          tabs: const [
            GButton(icon: Icons.home_rounded, text: 'Home'),
            GButton(icon: Icons.alarm, text: 'Relógio'),
            GButton(icon: Icons.calendar_month, text: 'Planner'),
            GButton(icon: Icons.settings, text: 'Configurações'),
          ],
        ),
      ),
    );
  }
}
