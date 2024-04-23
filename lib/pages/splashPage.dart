import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed('/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 56, 55, 55),
      body: Center(
        child: LoadingAnimationWidget.dotsTriangle(color: Color(0xFFAF0404), size: 100),
      ),
    );
  }
}