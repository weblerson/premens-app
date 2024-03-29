import 'package:flutter/material.dart';

import 'package:premens/components/general/white_back.dart';
import 'package:premens/components/general/vertical_padding.dart';
import 'package:premens/components/auth/user_input.dart';
import 'package:premens/components/auth/pass_input.dart';
import 'package:premens/components/auth/submit_button.dart';
import 'package:premens/components/auth/register_hyperlink.dart';

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
          children: [
            Center(
                child: SizedBox(
                    width: 250.0,
                    height: 250.0,
                    child: Image.asset('assets/images/logo_auth.jpeg'))),
            const VerticalPadding(height: 20.0),
            const Center(child: UserInput()),
            const VerticalPadding(height: 20.0),
            const Center(child: PasswordInput()),
            const VerticalPadding(height: 20.0),
            const Center(child: SubmitButton()),
            const VerticalPadding(height: 20.0),
            const Center(child: RegisterHyperlink())
          ],
        )
      ],
    ));
  }
}
