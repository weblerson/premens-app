import 'dart:async';

import 'package:flutter/material.dart';
import 'package:premens/components/general/white_back.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      handleTimeout(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const WhiteBack(),
        Center(child: Image.asset('assets/images/logo.jpeg'))
      ],
    ));
  }

  void handleTimeout(context) {
    Navigator.of(context).pushReplacementNamed('/auth');
  }
}
