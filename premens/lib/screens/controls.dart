import 'package:flutter/material.dart';

import 'package:premens/components/controls/controls_bg.dart';
import 'package:premens/components/controls/buttons.dart';
import 'package:premens/components/general/vertical_padding.dart';

class ControlsScreen extends StatelessWidget {
  const ControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        const ControlsBG(),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ControlButton(
                  imagePath: 'assets/images/arrow_up.png', text: 'Subir'),
              const VerticalPadding(height: 30.0),
              ControlButton(
                  imagePath: 'assets/images/bi_arrow.png', text: 'Automático'),
              const VerticalPadding(height: 30.0),
              ControlButton(
                  imagePath: 'assets/images/arrow_down.png', text: 'Descer')
            ],
          ),
        )
      ],
    ));
  }
}
