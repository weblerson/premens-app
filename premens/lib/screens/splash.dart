import 'package:flutter/material.dart';

import 'package:premens/components/white_back.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

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
}
