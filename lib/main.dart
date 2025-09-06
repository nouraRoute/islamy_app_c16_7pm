import 'package:flutter/material.dart';
import 'package:islamy_app_c16_7pm/screens/main_layer.dart';
import 'package:islamy_app_c16_7pm/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.appTheme,
      home: MainLayer(),
    );
  }
}
