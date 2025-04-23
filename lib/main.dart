import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cotidiapp/router/router.dart'; // Importe seu arquivo de rotas

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.interTextTheme()),
      routerConfig: router, // Use o router que você configurou
    );
  }
}