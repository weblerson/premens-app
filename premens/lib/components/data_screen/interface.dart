import 'package:flutter/material.dart';

import 'package:firebase_database/firebase_database.dart';

import 'package:premens/components/data_screen/card.dart';

import 'package:premens/data/auth_data.dart';
import 'package:premens/data/premens_data.dart';

class DataInterface extends StatefulWidget {
  const DataInterface({super.key});

  @override
  State<DataInterface> createState() => _DataInterfaceState();
}

class _DataInterfaceState extends State<DataInterface> {
  PremensData premensData = PremensData();

  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    DatabaseReference ref = FirebaseDatabase.instance.ref(
        '${AuthData.instance.uniqueId}/${AuthData.instance.user}/${AuthData.instance.token}');

    // setState(() {
    //   final data = ref.child('').get();
    //   PremensData.instance.fromJson(data as Map<String, dynamic>);

    //   print(
    //       'Tempo: ${PremensData.instance.pressingTime}; Prensando: ${PremensData.instance.isPressing}');
    // });

    ref.onValue.listen((DatabaseEvent event) {
      setState(() {
        final data = event.snapshot.value;
        premensData = PremensData.fromJson(data as Map<String, dynamic>);
        // PremensData.instance.fromJson(data as Map<String, dynamic>);

        print(data);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.1,
              top: MediaQuery.of(context).size.height * 0.15),
          child: DataCard(data: premensData))
    ]);
  }
}
