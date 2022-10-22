import 'package:flutter/material.dart';

import 'package:premens/controller/app_controller.dart';
import 'package:premens/components/prod_control/prod_control_fields.dart';

class ProdControlForm extends StatelessWidget {
  const ProdControlForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[const Required(), const Needful()],
      ),
    );
  }
}
