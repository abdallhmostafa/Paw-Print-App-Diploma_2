import 'package:flutter/material.dart';

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
      await Future.delayed(const Duration(milliseconds: 2000));
      Navigator.pushNamed(context, "/");
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Center(
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "PawPrint",
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            CircularProgressIndicator(color: Colors.white),
          ],
        ),
      ),
    );
  }
}
