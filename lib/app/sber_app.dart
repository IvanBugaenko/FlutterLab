import 'package:flutter/material.dart';
import 'package:sber/app/components/pages/start_pages/start_page.dart';
import 'package:sber/app/theme/app_theme.dart';

class SberApp extends StatelessWidget {
  const SberApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData,
      home: const StartPage(),
    );
  }
}
