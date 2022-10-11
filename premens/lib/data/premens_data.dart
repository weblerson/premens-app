class PremensData {
  int _totalTime = 0;
  int _remainingTime = 0;
  bool _isPressing = false;

  int get totalTime => _totalTime;
  int get remainingTime => _remainingTime;
  bool get isPressing => _isPressing;

  set totalTime(int value) {
    _totalTime = value;
  }

  set remainingTime(int value) {
    _remainingTime = value;
  }

  set isPressing(bool value) {
    _isPressing = value;
  }

  static PremensData fromJson(Map<String, dynamic> json) {
    PremensData data = PremensData();

    int totalTime = json['tempo'] as int;
    int remainingTime = json['restante'] as int;
    bool isPressing = json['ligado'] as bool;

    data.totalTime = totalTime;
    data.remainingTime = remainingTime;
    data.isPressing = isPressing;

    return data;
  }
}
