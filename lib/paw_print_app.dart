import 'package:flutter/material.dart';
import 'package:paw_print_app_2/features/home/home_page.dart';
import 'package:paw_print_app_2/features/not_found/not_found_page.dart';
import 'package:paw_print_app_2/splash/splash_page.dart';

class PawPrintApp extends StatelessWidget {
  const PawPrintApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "splash",
      onUnknownRoute: (settings) =>
          MaterialPageRoute(builder: (context) => const NotFoundPage()),
      routes: {
        "/": (context) => const HomePage(),
        "splash": (context) => const SplashPage(),
      },
      theme: ThemeData(
        chipTheme: ChipThemeData(
          side: const BorderSide(color: Color(0xFFFDEAE1)),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(20),
          ),
          labelStyle: const TextStyle(
            color: Color(0xFF564339),
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: const Color(0xFFFDEAE1),
        ),

        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFF914D),
          primary: const Color(0xFFFF914D),
          secondary: const Color(0xFF333333),
          brightness: Brightness.light,
        ),
      ),
      darkTheme: ThemeData(
        chipTheme: ChipThemeData(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(20),
          ),
          labelStyle: const TextStyle(
            color: Color(0xFF564339),
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: const Color(0xFFFDEAE1),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFF914D),
          primary: const Color(0xFFFF914D),
          secondary: const Color(0xFF333333),
          brightness: Brightness.dark,
        ),
      ),
    );
  }
}
