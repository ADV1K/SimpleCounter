import 'package:flutter/material.dart';

import 'screens/home.dart';
import 'screens/settings.dart';
import 'widgets/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      routes: {
        "/home": (context) => const HomeScreen(),
        "/settings": (context) => const SettingsScreen(),
      },
    );
  }
}
