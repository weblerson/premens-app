import 'dart:ui';

import 'package:flutter/material.dart';

class ProdControlModel extends StatefulWidget {
  const ProdControlModel({super.key});

  @override
  State<ProdControlModel> createState() => _ProdControlModelState();
}

class _ProdControlModelState extends State<ProdControlModel> {
  double inputBorderRadius = 10.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * .4,
          decoration: BoxDecoration(
            color: const Color(0xFFD9D9D9).withOpacity(.5),
          ),
          child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 25.0, sigmaY: 25.0)),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Text('Painel de Controle',
              style: TextStyle(
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF134358),
              ),
              textAlign: TextAlign.center),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const Text('Quantidade Esperada',
                    style: TextStyle(
                        fontSize: 24.0,
                        color: Color(0xFF134358),
                        fontWeight: FontWeight.bold)),
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
                  child: SizedBox(
                    width: 100.0,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(inputBorderRadius))),
                          fillColor: const Color(0xFF15566A).withOpacity(.55)),
                    ),
                  ),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
