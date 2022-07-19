// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(microseconds: 1000), () {
      Navigator.pushNamed(context, '/main/home');
    });
    return const Scaffold(
      body:  Text(
        "SplashScreen",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
      ),
    );
  }
}
