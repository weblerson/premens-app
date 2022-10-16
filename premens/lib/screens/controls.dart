import 'package:flutter/material.dart';

import 'package:premens/components/controls/controls_bg.dart';
import 'package:premens/components/controls/buttons.dart';
import 'package:premens/components/general/vertical_padding.dart';

import 'package:premens/data/lerson_back.dart';
import 'package:premens/data/auth_data.dart';

class ControlsScreen extends StatelessWidget {
  const ControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        const ControlsBG(),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onLongPress: () async {
                  Map<String, dynamic> data = {
                    'id': AuthData.instance.uniqueId,
                    'username': AuthData.instance.user,
                    'token': AuthData.instance.token,
                    'key': 'up',
                    'value': true
                  };

                  final res = await LersonBack.instance.control(data);
                  if (res['success']) {
                    SnackBar snackBar =
                        const SnackBar(content: Text('Subindo...'));

                    // ignore: use_build_context_synchronously
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);

                    return;
                  }

                  SnackBar snackBar = SnackBar(content: Text(res['body']));

                  // ignore: use_build_context_synchronously
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);

                  return;
                },
                onLongPressUp: () async {
                  Map<String, dynamic> data = {
                    'id': AuthData.instance.uniqueId,
                    'username': AuthData.instance.user,
                    'token': AuthData.instance.token,
                    'key': 'up',
                    'value': false
                  };

                  final res = await LersonBack.instance.control(data);
                  if (res['success']) {
                    SnackBar snackBar = const SnackBar(content: Text('Parou!'));

                    // ignore: use_build_context_synchronously
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);

                    return;
                  }

                  SnackBar snackBar = SnackBar(content: Text(res['body']));

                  // ignore: use_build_context_synchronously
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);

                  return;
                },
                child: ControlButton(
                    imagePath: 'assets/images/arrow_up.png', text: 'Subir'),
              ),
              const VerticalPadding(height: 30.0),
              GestureDetector(
                onLongPress: () async {
                  Map<String, dynamic> data = {
                    'id': AuthData.instance.uniqueId,
                    'username': AuthData.instance.user,
                    'token': AuthData.instance.token,
                    'key': 'automatico',
                    'value': true
                  };

                  final res = await LersonBack.instance.control(data);
                  if (res['success']) {
                    SnackBar snackBar = const SnackBar(
                        content: Text('Modo Automático Ativado!'));

                    // ignore: use_build_context_synchronously
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);

                    return;
                  }

                  SnackBar snackBar = SnackBar(content: Text(res['body']));

                  // ignore: use_build_context_synchronously
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);

                  return;
                },
                child: ControlButton(
                    imagePath: 'assets/images/bi_arrow.png',
                    text: 'Automático'),
              ),
              const VerticalPadding(height: 30.0),
              GestureDetector(
                onLongPress: () async {
                  Map<String, dynamic> data = {
                    'id': AuthData.instance.uniqueId,
                    'username': AuthData.instance.user,
                    'token': AuthData.instance.token,
                    'key': 'down',
                    'value': true
                  };

                  final res = await LersonBack.instance.control(data);
                  if (res['success']) {
                    SnackBar snackBar =
                        const SnackBar(content: Text('Descendo...'));

                    // ignore: use_build_context_synchronously
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);

                    return;
                  }

                  SnackBar snackBar = SnackBar(content: Text(res['body']));

                  // ignore: use_build_context_synchronously
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);

                  return;
                },
                onLongPressUp: () async {
                  Map<String, dynamic> data = {
                    'id': AuthData.instance.uniqueId,
                    'username': AuthData.instance.user,
                    'token': AuthData.instance.token,
                    'key': 'down',
                    'value': false
                  };

                  final res = await LersonBack.instance.control(data);
                  if (res['success']) {
                    SnackBar snackBar = const SnackBar(content: Text('Parou!'));

                    // ignore: use_build_context_synchronously
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);

                    return;
                  }

                  SnackBar snackBar = SnackBar(content: Text(res['body']));

                  // ignore: use_build_context_synchronously
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);

                  return;
                },
                child: ControlButton(
                    imagePath: 'assets/images/arrow_down.png', text: 'Descer'),
              )
            ],
          ),
        )
      ],
    ));
  }
}
