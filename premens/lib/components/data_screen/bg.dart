import 'package:flutter/material.dart';

class BlueBg extends StatelessWidget {
  const BlueBg({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff134358),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
    );
  }
}
