import 'package:flutter/material.dart';

class ControlsBG extends StatelessWidget {
  final Color blueColor = const Color(0xFF134358);
  final Color whiteColor = const Color(0xFFD9D9D9);

  const ControlsBG({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: blueColor),
        child: Center(
            child: Opacity(
                opacity: 0.2,
                child: Image.asset('assets/images/prensa_dados.png'))),
      ),
      Container(
        alignment: Alignment.topCenter,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(50.0),
                bottomRight: Radius.circular(50.0)),
            boxShadow: const <BoxShadow>[
              BoxShadow(
                  color: Colors.black54,
                  spreadRadius: 1.0,
                  blurRadius: 3.0,
                  offset: Offset(0, 3))
            ]),
        child: Center(
            child: Text('Controles',
                style: TextStyle(color: blueColor, fontSize: 32.0))),
      )
    ]);
  }
}
