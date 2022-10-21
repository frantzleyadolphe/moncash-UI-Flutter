// ignore_for_file: file_names
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:moncash/screens/GetstartedScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startDelay();
  }

  startDelay() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, route);
  }

  route() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const GetStartedScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Image(
          image: AssetImage('images/moncash.png'),
        ),
      ),
    );
  }
}
