import 'package:flutter/material.dart';

import 'package:premens/data/auth_data.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
          border: UnderlineInputBorder(), labelText: 'Senha:'),
      onChanged: (String text) {
        if (text.isNotEmpty) {
          UserData.instance.password = text;
        }
      },
    );
  }
}
