import 'package:club_force_test_task/club_force_test_task_app.dart';
import 'package:club_force_test_task/di/get_it.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  setup();
  runApp(const ClubForceTestTaskApp());
}
