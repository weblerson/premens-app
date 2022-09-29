import 'package:flutter/material.dart';

import 'package:premens/components/general/white_back.dart';
import 'package:premens/components/general/vertical_padding.dart';

import 'package:premens/components/register/user_input.dart';
import 'package:premens/components/register/pass_input.dart';
import 'package:premens/components/register/submit_button.dart';

class Register extends StatelessWidget {
  const Register({super.key});

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
            const Center(child: PassInput()),
            const VerticalPadding(height: 20.0),
            const Center(child: SubmitButton())
          ],
        )
      ],
    ));
  }
}
