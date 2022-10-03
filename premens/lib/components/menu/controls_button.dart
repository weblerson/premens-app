import 'package:flutter/material.dart';

class ControlsButton extends StatelessWidget {
  const ControlsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250.0,
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              elevation: 10.0,
              side: const BorderSide(color: Colors.cyan)),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Icon(
                Icons.signal_wifi_4_bar,
                color: Colors.black,
              ),
              Text(
                'Visualizar Controles',
                style: TextStyle(color: Colors.black),
              )
            ],
          )),
    );
  }
}
