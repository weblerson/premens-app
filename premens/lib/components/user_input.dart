import 'package:flutter/material.dart';

import 'package:premens/data/auth_data.dart';

class UserInput extends StatelessWidget {
  const UserInput({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
          border: UnderlineInputBorder(), labelText: 'Usuário:'),
      onChanged: (String text) {
        if (text.isNotEmpty) {
          UserData.instance.user = text;
        }
      },
    );
  }
}
