import 'package:flutter/material.dart';

import 'package:premens/controller/app_controller.dart';

class Required extends StatelessWidget {
  final Color bgInputColor = const Color(0xFF15566A);

  final TextStyle textStyle = const TextStyle(
      color: Color(0xFF134358), fontSize: 24.0, fontWeight: FontWeight.bold);

  const Required({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('Quantidade\nEsperada (kg):', style: textStyle),
          Container(
              decoration: BoxDecoration(
                  color: bgInputColor.withOpacity(.55),
                  borderRadius: const BorderRadius.all(Radius.circular(20.0))),
              width: 150.0,
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)))),
                onChanged: (String text) {
                  double mass;

                  if (text == '') {
                    mass = 0;
                  } else {
                    mass = double.parse(text);
                  }

                  MassController.instance.massRequired = mass;

                  MassController.instance.updateMass();

                  return;
                },
              ))
        ]);
  }
}

class Needful extends StatelessWidget {
  final Color bgInputColor = const Color(0xFF15566A);

  final TextStyle textStyle = const TextStyle(
      color: Color(0xFF134358), fontSize: 24.0, fontWeight: FontWeight.bold);

  const Needful({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: MassController.instance,
      builder: (BuildContext context, Widget? child) {
        return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Quantidade\nNecessária (kg):', style: textStyle),
              Container(
                  decoration: BoxDecoration(
                      color: bgInputColor.withOpacity(.55),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20.0))),
                  width: 150.0,
                  child: TextFormField(
                    readOnly: true,
                    decoration: InputDecoration(
                        label: Text(
                            MassController.instance.massNeedful.toString()),
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)))),
                    onChanged: (String text) {
                      MassController.instance.massRequired = double.parse(text);

                      MassController.instance.updateMass();

                      return;
                    },
                  ))
            ]);
      },
    );
  }
}
