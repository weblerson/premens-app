import 'package:flutter/material.dart';

import 'package:premens/components/general/white_back.dart';

class DataScreen extends StatelessWidget {
  const DataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: const [
        WhiteBack(),
      ],
    ));
  }
}
