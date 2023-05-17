import 'dart:async';
import 'package:flutter/material.dart';

class Debouncer {
  late Timer _timer;
  Debouncer() {
    _timer = Timer(Duration.zero, () {});
  }
  void run(VoidCallback callback) {
    if (_timer.isActive) {
      _timer.cancel();
    }

    _timer = Timer(const Duration(seconds: 1), callback);
  }
}
