import 'package:flutter/widgets.dart';

import 'package:premens/data/premens_data.dart';

class AppController extends ChangeNotifier {
  bool isPressing = false;
  int totalTime = 0;
  int remainingTime = 0;

  static AppController instance = AppController();

  void changeLabels(PremensData data) {
    isPressing = data.isPressing;
    totalTime = data.totalTime;
    remainingTime = data.remainingTime;

    notifyListeners();
  }
}
