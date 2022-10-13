import 'package:flutter/material.dart';

import 'package:firebase_database/firebase_database.dart';

import 'package:premens/components/data_screen/card.dart';

import 'package:premens/data/auth_data.dart';
import 'package:premens/data/premens_data.dart';

import 'package:premens/controller/app_controller.dart';

class DataInterface extends StatefulWidget {
  const DataInterface({super.key});

  @override
  State<DataInterface> createState() => _DataInterfaceState();
}

class _DataInterfaceState extends State<DataInterface> {
  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    DatabaseReference ref = FirebaseDatabase.instance.ref(
        '${AuthData.instance.uniqueId}/${AuthData.instance.user}/${AuthData.instance.token}');

    ref.onValue.listen((DatabaseEvent event) {
      final data = event.snapshot.value as Map;

      PremensData premensData = PremensData();

      premensData.isPressing = data['ligado'] as bool;
      premensData.remainingTime = data['restante'] as int;
      premensData.totalTime = data['tempo'] as int;

      AppController.instance.changeLabels(premensData);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.1,
              top: MediaQuery.of(context).size.height * 0.15),
          child: const DataCard())
    ]);
  }
}
