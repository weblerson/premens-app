import 'package:flutter/material.dart';

import 'package:premens/data/register_data.dart';
import 'package:premens/data/lerson_back.dart';

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
            if (RegisterData.instance.user.isEmpty ||
                RegisterData.instance.password.isEmpty) {
              const snackBar =
                  SnackBar(content: Text('Preencha todos os campos!'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);

              return;
            }

            final res = await LersonBack.instance
                .register(RegisterData.instance.toJson());

            if (!res['success']) {
              SnackBar snackBar = SnackBar(content: Text(res['body']));

              // ignore: use_build_context_synchronously
              ScaffoldMessenger.of(context).showSnackBar(snackBar);

              return;
            }

            SnackBar snackBar = SnackBar(content: Text(res['body']));
            RegisterData.instance.clear();

            // ignore: use_build_context_synchronously
            Navigator.of(context).pushReplacementNamed('/auth');

            // ignore: use_build_context_synchronously
            ScaffoldMessenger.of(context).showSnackBar(snackBar);

            return;

            // DatabaseReference ref = FirebaseDatabase.instance.ref();
            // final userSnapshot =
            //     await ref.child(RegisterData.instance.user).get();

            // if (!userSnapshot.exists) {
            //   await ref.update({
            //     RegisterData.instance.user: {
            //       RegisterData.instance.password: {'ligado': false}
            //     }
            //   });

            //   RegisterData.instance.clear();
            //   // ignore: use_build_context_synchronously
            //   Navigator.of(context).pushReplacementNamed('/auth');

            //   const snackBar =
            //       SnackBar(content: Text('Usuário cadastrado com sucesso!'));
            //   // ignore: use_build_context_synchronously
            //   ScaffoldMessenger.of(context).showSnackBar(snackBar);

            //   return;
            // }

            // const snackBar =
            //     SnackBar(content: Text('Esse usuário já existe. Tente outro.'));
            // // ignore: use_build_context_synchronously
            // ScaffoldMessenger.of(context).showSnackBar(snackBar);

            // return;
          },
          child: const Text('Cadastrar')),
    );
  }
}
