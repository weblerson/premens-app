import 'package:flutter/material.dart';

import 'package:premens/components/general/vertical_padding.dart';
import 'package:premens/components/menu/menu_button.dart';

class Options extends StatelessWidget {
  const Options({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Text('Selecione uma das opções abaixo:',
            style: TextStyle(color: Color(0xFF15566A), fontSize: 20.0)),
        VerticalPadding(height: 50.0),
        MenuButton(
            route: '/datascreen',
            imagePath: 'assets/images/importar_icon.png',
            label: 'Visualizar Dados'),
        VerticalPadding(height: 20.0),
        MenuButton(
            route: '/datascreen',
            imagePath: 'assets/images/manu_icon.png',
            label: 'Visualizar Controles')
      ],
    );
  }
}
