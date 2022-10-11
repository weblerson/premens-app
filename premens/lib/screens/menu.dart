import 'package:flutter/material.dart';

import 'package:premens/components/menu/menu_bg.dart';
import 'package:premens/components/menu/options.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: const [MenuBG(), Center(child: Options())],
    ));
  }
}
