import 'package:flutter/material.dart';

import 'package:premens/components/data_screen/label.dart';
import 'package:premens/data/premens_data.dart';

class DataCard extends StatelessWidget {
  final PremensData data;

  const DataCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color(0xFFD9D9D9),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(50.0), topRight: Radius.circular(50.0)),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.25),
                spreadRadius: 3.0,
                blurRadius: 7.0,
                offset: const Offset(0, -5))
          ]),
      child: Stack(children: <Widget>[
        Center(
          child: Image.asset('assets/images/prensa_dados.png'),
        ),
        Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                  child: DataLabel(
                      text: 'Status:',
                      value: data.isPressing ? 'Pressionando' : 'Parada')),
              Center(
                  child: DataLabel(
                      text: 'Tempo Total:', value: data.totalTime.toString())),
              Center(
                  child: DataLabel(
                      text: 'Tempo de Conclusão:',
                      value: data.remainingTime.toString()))
            ])
      ]),
    );
  }
}
