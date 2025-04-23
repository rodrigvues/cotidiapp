import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.grey[850],
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 40),
              child: Text(
                'Olá, ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Container(
            child: Text(
              'Olá, ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.w700,
              ),
            ),
          )
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'CotidiApp',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              Icons.notifications,
              color: Colors.white,
              size: 22.0,
            )
          ],
        ),
      ),
      backgroundColor: Colors.grey[850],
      elevation: 0.0,
    );
  }
}
