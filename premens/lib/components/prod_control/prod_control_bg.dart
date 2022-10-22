import 'dart:ui';

import 'package:flutter/material.dart';

class ProdControlBg extends StatelessWidget {
  final Color bgColor = const Color(0xFFD9D9D9);

  const ProdControlBg({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 25.0, sigmaY: 25.0),
      child: Container(
        decoration: BoxDecoration(color: bgColor.withOpacity(.5)),
      ),
    );
  }
}
