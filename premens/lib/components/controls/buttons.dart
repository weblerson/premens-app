import 'package:flutter/material.dart';

class ControlButton extends StatelessWidget {
  final Color buttonColor = const Color(0xFF134358).withOpacity(0.6);
  final String imagePath;
  final String text;

  ControlButton({super.key, required this.imagePath, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .4,
      height: 150.0,
      decoration: BoxDecoration(
          color: buttonColor,
          boxShadow: const <BoxShadow>[
            BoxShadow(
                color: Colors.black54,
                spreadRadius: 1.0,
                blurRadius: 3.0,
                offset: Offset(0, 3))
          ],
          borderRadius: const BorderRadius.all(Radius.circular(20.0))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 100.0,
            height: 75.0,
            child: Image.asset(imagePath,
                color: const Color(0xFFFFFFFF).withOpacity(.8)),
          ),
          Text(text,
              style: const TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600))
        ],
      ),
    );
  }
}
