import 'package:flutter/material.dart';

import 'package:premens/data/auth_data.dart';
import 'package:premens/data/lerson_back.dart';

import 'package:firebase_database/firebase_database.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 300.0,
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Colors.blue)),
          onPressed: () async {
            if (UserData.instance.user.isEmpty ||
                UserData.instance.password.isEmpty) {
              const snackBar = SnackBar(
                content: Text('Preencha os campos!'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);

              return;
            }

            final res =
                await LersonBack.instance.auth(UserData.instance.toJson());

            if (!res['success']) {
              SnackBar snackBar = SnackBar(content: Text(res['body']));

              // ignore: use_build_context_synchronously
              ScaffoldMessenger.of(context).showSnackBar(snackBar);

              return;
            }

            AuthData.instance.uniqueId = res['body']['id'];
            AuthData.instance.token = res['body']['token'];
            AuthData.instance.user = UserData.instance.user;

            // ignore: use_build_context_synchronously
            Navigator.of(context).pushReplacementNamed('/menu');

            return;

            // DatabaseReference ref = FirebaseDatabase.instance.ref();
            // final userSnapshot = await ref.child(UserData.instance.user).get();

            // if (userSnapshot.exists) {
            //   final passSnapshot = await ref
            //       .child(
            //           '${UserData.instance.user}/${UserData.instance.password}')
            //       .get();

            //   if (passSnapshot.exists) {
            //     // Passar para o menu
            //     // ignore: use_build_context_synchronously
            //     Navigator.of(context).pushReplacementNamed('/menu');

            //     return;
            //   }

            //   const snackBar = SnackBar(
            //     content: Text('Senha incorreta!'),
            //   );
            //   // ignore: use_build_context_synchronously
            //   ScaffoldMessenger.of(context).showSnackBar(snackBar);

            //   return;
            // }

            // const snackBar = SnackBar(
            //   content: Text('Usuário inexistente!'),
            // );
            // // ignore: use_build_context_synchronously
            // ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: const Text('Entrar')),
    );
  }
}
