import 'package:flutter/material.dart';

class WhiteBack extends StatelessWidget {
  const WhiteBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
    );
  }
}
