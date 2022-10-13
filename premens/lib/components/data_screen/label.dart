import 'package:flutter/material.dart';

import 'package:premens/controller/app_controller.dart';

class StatusLabel extends StatelessWidget {
  const StatusLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (BuildContext context, Widget? child) {
        return DataLabel(
            text: 'Status:',
            value:
                AppController.instance.isPressing ? 'Pressionando' : 'Parado');
      },
    );
  }
}

class TotalTimeLabel extends StatelessWidget {
  const TotalTimeLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (BuildContext context, Widget? child) {
        return DataLabel(
            text: 'Tempo Total:',
            value: AppController.instance.totalTime.toString());
      },
    );
  }
}

class RemainingTimeLabel extends StatelessWidget {
  const RemainingTimeLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (BuildContext context, Widget? child) {
        return DataLabel(
            text: 'Tempo de Conclusão:',
            value: AppController.instance.remainingTime.toString());
      },
    );
  }
}

class DataLabel extends StatelessWidget {
  final String text;
  final String value;

  const DataLabel({super.key, required this.text, required this.value});

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
              Text(value,
                  style: TextStyle(
                      color: const Color(0xFF15566A).withOpacity(0.8)))
            ],
          ),
        ),
      ),
    );
  }
}
