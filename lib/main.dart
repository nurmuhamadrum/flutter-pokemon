import 'package:flutter/material.dart';
import 'package:pokemon/ui/pages/main_page.dart';

import 'ui/pages/splash_page.dart';
import 'ui/pages/get_started.dart';
import 'ui/pages/main_page.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/get-started': (context) => GetStartedPage(),
        '/main': (context) => MainPage()
      },
    );
  }
}