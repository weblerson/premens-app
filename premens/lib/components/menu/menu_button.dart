import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'package:premens/screens/prod_control_modal.dart';

class MenuButton extends StatelessWidget {
  final Color bgButton = const Color(0xFF134358);
  final Color fontColor = const Color(0xFFD9D9D9);

  final String route;
  final String imagePath;
  final String label;

  const MenuButton(
      {super.key,
      required this.route,
      required this.imagePath,
      required this.label});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (route != 'modal') {
          Navigator.of(context).pushNamed(route);

          return;
        }

        showBarModalBottomSheet(
            context: context, builder: (context) => const ProdControlModel());

        return;
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.6,
        height: 40.0,
        decoration: BoxDecoration(
            color: bgButton,
            borderRadius: const BorderRadius.all(Radius.circular(30.0)),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black54,
                  spreadRadius: 1.0,
                  blurRadius: 3.0,
                  offset: Offset(0, 3))
            ]),
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(label, style: TextStyle(color: fontColor)),
              Image.asset(imagePath)
            ],
          ),
        ),
      ),
    );
  }
}

// class DataButton extends StatelessWidget {
//   const DataButton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 250.0,
//       child: OutlinedButton(
//           style: OutlinedButton.styleFrom(
//               backgroundColor: Colors.blueAccent,
//               elevation: 10.0,
//               side: const BorderSide(color: Colors.cyan)),
//           onPressed: () {
//             Navigator.of(context).pushNamed('/datascreen');
//           },
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: const [
//               Icon(
//                 Icons.computer,
//                 color: Colors.black,
//               ),
//               Text(
//                 'Visualizar Dados',
//                 style: TextStyle(color: Colors.black),
//               )
//             ],
//           )),
//     );
//   }
// }
