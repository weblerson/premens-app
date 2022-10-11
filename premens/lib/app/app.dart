import 'package:flutter/material.dart';

import 'package:premens/screens/splash.dart';
import 'package:premens/screens/auth.dart';
import 'package:premens/screens/register.dart';
import 'package:premens/screens/menu.dart';
import 'package:premens/screens/data_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Premens',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/splash': (context) => const Splash(),
        '/auth': (context) => const Auth(),
        '/register': (context) => const Register(),
        '/menu': (context) => const Menu(),
        '/datascreen': (context) => const DataScreen()
      },
      initialRoute: '/menu',
    );
  }
}
