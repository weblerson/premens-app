import 'package:flutter/material.dart';

class VerticalPadding extends StatelessWidget {
  final double height;

  const VerticalPadding({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
