import 'package:flutter/material.dart';

import 'package:premens/components/white_back.dart';
import 'package:premens/components/vertical_padding.dart';
import 'package:premens/components/user_input.dart';
import 'package:premens/components/pass_input.dart';
import 'package:premens/components/submit_button.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const WhiteBack(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Center(child: UserInput()),
            VerticalPadding(height: 20.0),
            Center(child: PasswordInput()),
            VerticalPadding(height: 20.0),
            Center(child: SubmitButton())
          ],
        )
      ],
    ));
  }
}
