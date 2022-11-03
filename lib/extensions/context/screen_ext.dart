import 'package:club_force_test_task/presentation/general/screen.dart';
import 'package:flutter/material.dart';

extension ScreenExt on BuildContext {
  Screen get screen => Screen.getInstance();
}
