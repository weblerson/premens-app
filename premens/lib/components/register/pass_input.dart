import 'package:flutter/material.dart';

import 'package:premens/data/register_data.dart';

class PassInput extends StatelessWidget {
  const PassInput({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.0,
      child: TextField(
        decoration: const InputDecoration(
            border: UnderlineInputBorder(), labelText: 'Senha'),
        onChanged: (String text) {
          RegisterData.instance.password = text;
        },
        obscureText: true,
      ),
    );
  }
}
