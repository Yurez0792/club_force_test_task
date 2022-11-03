import 'dart:ui';

import 'package:flutter/material.dart';

class Screen {
  late double scale;

  static final Screen _singleton = Screen._internal();

  factory Screen.getInstance() {
    return _singleton;
  }

  Screen._internal() {
    scale = getScaleFactor();
  }

  Size screenSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  double getScaleFactor() {
    double result = 1;

    switch (getDeviceSizeType()) {
      case DeviceSizeType.normal:
        result = 1;
        break;
      case DeviceSizeType.normalWide:
        result = 1;
        break;
      case DeviceSizeType.small:
        result = 0.8;
        break;
      case DeviceSizeType.large:
        result = 1.4;
        break;
    }

    return result;
  }

  DeviceSizeType getDeviceSizeType() {
    DeviceSizeType result = DeviceSizeType.normal;
    SingletonFlutterWindow window = WidgetsBinding.instance.window;

    final data = MediaQueryData.fromWindow(window);

    if (isTablet(data)) {
      result = DeviceSizeType.large;
    } else {
      final size = data.size.shortestSide * data.devicePixelRatio;
      final height = data.size.height;
      final width = data.size.width;
      final correlation = width / height;

      if (size < 750) {
        result = DeviceSizeType.small;
      } else if (size >= 750 && correlation > 0.6) {
        result = DeviceSizeType.normalWide;
      } else {
        result = DeviceSizeType.normal;
      }
    }

    return result;
  }

  bool isTablet(MediaQueryData data) {
    bool result = false;
    final devicePixelRatio = data.devicePixelRatio;

    if (devicePixelRatio < 2 &&
        (data.size.width * devicePixelRatio >= 1000 ||
            data.size.height * devicePixelRatio >= 1000)) {
      result = true;
    } else if (devicePixelRatio == 2 &&
        (data.size.width * devicePixelRatio >= 1920 ||
            data.size.height * devicePixelRatio >= 1920)) {
      result = true;
    }

    return result;
  }
}

enum DeviceSizeType { small, normal, normalWide, large }
