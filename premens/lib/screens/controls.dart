import 'package:flutter/material.dart';

import 'package:premens/components/controls/controls_bg.dart';

class ControlsScreen extends StatelessWidget {
  const ControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: const <Widget>[ControlsBG()],
    ));
  }
}
