import 'package:flutter/material.dart';

import 'package:premens/data/auth_data.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.0,
      child: TextField(
        decoration: const InputDecoration(
            border: UnderlineInputBorder(), labelText: 'Senha'),
        onChanged: (String text) {
          UserData.instance.password = text;
        },
        obscureText: true,
      ),
    );
  }
}
