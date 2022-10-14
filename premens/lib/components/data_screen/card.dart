import 'package:flutter/material.dart';

import 'package:premens/components/data_screen/label.dart';

class DataCard extends StatelessWidget {
  const DataCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color(0xFFD9D9D9),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(50.0), topRight: Radius.circular(50.0)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black.withOpacity(0.25),
                spreadRadius: 3.0,
                blurRadius: 7.0,
                offset: const Offset(0, -5))
          ]),
      child: Stack(children: <Widget>[
        Center(
          child: Opacity(
              opacity: 0.2,
              child: Image.asset('assets/images/prensa_dados.png')),
        ),
        Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const <Widget>[
              Center(child: StatusLabel()),
              Center(child: TotalTimeLabel()),
              Center(child: RemainingTimeLabel())
            ])
      ]),
    );
  }
}
