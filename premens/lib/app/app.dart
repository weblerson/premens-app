import 'package:flutter/material.dart';

import 'package:premens/screens/splash.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Premens',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {'/splash': (context) => const Splash()},
      initialRoute: '/splash',
    );
  }
}
