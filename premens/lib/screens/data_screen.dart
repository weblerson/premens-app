import 'package:flutter/material.dart';

import 'package:premens/components/data_screen/interface.dart';

import 'package:premens/components/data_screen/bg.dart';

class DataScreen extends StatelessWidget {
  const DataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const BlueBg(),
        const Center(child: DataInterface()),
        Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.01,
              top: MediaQuery.of(context).size.height * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Text('Olá!',
                  style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 36.0)),
              Text('Veja aqui os dados da sua prensa',
                  style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 20.0))
            ],
          ),
        ),
      ],
    ));
  }
}
