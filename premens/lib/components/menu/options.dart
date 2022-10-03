import 'package:flutter/material.dart';

import 'package:premens/components/general/vertical_padding.dart';
import 'package:premens/components/menu/data_button.dart';
import 'package:premens/components/menu/controls_button.dart';

class Options extends StatelessWidget {
  const Options({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Text('Selecione uma das opções abaixo:',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
        VerticalPadding(height: 20.0),
        DataButton(),
        VerticalPadding(height: 20.0),
        ControlsButton()
      ],
    );
  }
}
