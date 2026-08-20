import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    moveTOHome();
  }

  void moveTOHome() {
    WidgetsBinding.instance.addPostFrameCallback((t) async {
      await Future.delayed(const Duration(milliseconds: 1500));
      if (mounted) {
        Navigator.pushNamed(context, "/");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Center(
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "PawPrint",
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ).animate().fade().slideX(
              duration: const Duration(milliseconds: 500),
            ),
            const CircularProgressIndicator(color: Colors.white),
          ],
        ),
      ),
    );
  }
}
