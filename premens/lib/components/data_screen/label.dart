import 'package:flutter/material.dart';

class DataLabel extends StatefulWidget {
  final String text;
  final String value;

  const DataLabel({super.key, required this.text, required this.value});

  @override
  // ignore: no_logic_in_create_state
  State<DataLabel> createState() => _DataLabelState(text, value);
}

class _DataLabelState extends State<DataLabel> {
  final String text;
  final String value;

  _DataLabelState(this.text, this.value);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: 40.0,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            color: const Color(0xFFB5B5B5).withOpacity(0.8),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  spreadRadius: .5,
                  blurRadius: 3.0,
                  offset: const Offset(0, 3))
            ]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                text,
                style:
                    TextStyle(color: const Color(0xFF15566A).withOpacity(0.8)),
              ),
              Text(value as String,
                  style: TextStyle(
                      color: const Color(0xFF15566A).withOpacity(0.8)))
            ],
          ),
        ),
      ),
    );
  }
}
