import 'package:flutter/material.dart';

class MenuBG extends StatelessWidget {
  final int whiteColor = 0xFFD9D9D9;
  final int blueColor = 0xFF134358;

  const MenuBG({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Color(whiteColor)),
        Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.12,
                decoration: BoxDecoration(
                    color: Color(blueColor),
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(50.0),
                        bottomRight: Radius.circular(50.0)),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black54,
                          spreadRadius: 1.0,
                          blurRadius: 3.0,
                          offset: Offset(0, 3))
                    ]),
                child: Opacity(
                    opacity: 0.8,
                    child: Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: Opacity(
                            opacity: 0.8,
                            child:
                                Image.asset('assets/images/prensa_menu.png')))),
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.10,
                  decoration: BoxDecoration(
                      color: Color(blueColor),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(50.0),
                          topRight: Radius.circular(50.0)),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black54,
                            spreadRadius: 1.0,
                            blurRadius: 3.0,
                            offset: Offset(0, -3))
                      ]),
                  child: const Center(
                      child: Text('B.R.A PREMENS',
                          style:
                              TextStyle(fontSize: 32.0, color: Colors.white))))
            ])
      ],
    );
  }
}
