import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:naghsheha_app/views/main_view.dart';
import 'package:naghsheha_app/views/signup_view.dart';
import 'package:naghsheha_app/views/splash_view.dart';

import 'constant/colors.dart';

void main() {
  runApp(NaghshehaApp());
}

class NaghshehaApp extends StatelessWidget {
  const NaghshehaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('fa', 'IR'), // Farsi, Iran
      ],
      locale: const Locale('fa', 'IR'),
      theme: ThemeData(
        fontFamily: 'Samim',
        inputDecorationTheme: const InputDecorationTheme(
          hoverColor: SolidColors.themeColor,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: SolidColors.themeColor),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: SolidColors.themeColor),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          hintStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(255, 219, 219, 219),
          ),
        ),
      ),
      home: SplashView(),
    );
  }
}
