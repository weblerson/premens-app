import 'package:flutter/material.dart';

class RegisterHyperlink extends StatelessWidget {
  const RegisterHyperlink({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('Não tem um produto cadastrado? '),
        GestureDetector(
          child: const Text(
              style: TextStyle(
                  color: Colors.blue, decoration: TextDecoration.underline),
              'Clique aqui!'),
          onTap: () => Navigator.of(context).pushNamed('/register'),
        )
      ],
    );
  }
}
