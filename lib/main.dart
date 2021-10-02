import 'package:flutter/material.dart';
import 'package:thinkpeople/core/utils/constants.dart';
import 'package:thinkpeople/core/utils/style.dart';
import 'package:thinkpeople/ui/splash_screen/tk_splash.dart';

void main() {
  runApp(const TkApp());
}

class TkApp extends StatelessWidget {
  const TkApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: kAppName,
      theme: ThemeHandler.lightMode,
      home: const TkSplashScreen(),
    );
  }
}
