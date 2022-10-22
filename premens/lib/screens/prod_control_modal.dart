import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:premens/components/prod_control/prod_control_bg.dart';
import 'package:premens/components/prod_control/prod_control_form.dart';

class ProdControlModal extends StatelessWidget {
  final Color titleColor = const Color(0xFF134358);

  const ProdControlModal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * .6,
        child: Stack(children: <Widget>[
          const ProdControlBg(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Text('Painel de Controle',
                  style: TextStyle(
                      color: titleColor,
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          const Center(child: ProdControlForm())
        ]));
  }
}
