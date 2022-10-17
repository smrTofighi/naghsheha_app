import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:naghsheha_app/views/main_view.dart';

void main() {
  runApp(NaghshehaApp());
}

class NaghshehaApp extends StatelessWidget {
  const NaghshehaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      theme: ThemeData(fontFamily: 'Samim'),
      home: MainView(),
    );
  }
}
