import 'package:flutter/material.dart';
import 'package:islamy_app_c16_7pm/screens/main_layer.dart';
import 'package:islamy_app_c16_7pm/tabs/quran_tab/sura_details_page.dart';
import 'package:islamy_app_c16_7pm/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        MainLayer.routeName: (_) => MainLayer(),
        SuraDetailsPage.routeName: (_) => SuraDetailsPage(),
      },
      theme: AppTheme.appTheme,
      initialRoute: MainLayer.routeName,
    );
  }
}
