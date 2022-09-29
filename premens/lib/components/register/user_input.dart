import 'package:flutter/material.dart';

import 'package:premens/data/register_data.dart';

class UserInput extends StatelessWidget {
  const UserInput({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.0,
      child: TextField(
        decoration: const InputDecoration(
            border: UnderlineInputBorder(), labelText: 'Usuário'),
        onChanged: (String text) {
          RegisterData.instance.user = text;
        },
      ),
    );
  }
}
