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

    return;
  }
}

class MassController extends ChangeNotifier {
  double massRequired = 0;
  double massNeedful = 0;

  static MassController instance = MassController();

  void updateMass() {
    '''
    Para cada tonelada de mandioca -> 200kg de farinha
    ''';

    massNeedful = 5 * massRequired;

    notifyListeners();

    return;
  }
}
