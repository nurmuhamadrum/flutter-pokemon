import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pokemon/ui/pages/get_started.dart';
import '../../shared/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/get-started');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_snorlax.png'))),
            ),
            Text(
              'POKEMON',
              style: whiteTextStyle.copyWith(
                fontSize: 32,
                fontWeight: bold,
                letterSpacing: 10
              ),
            )
          ],
        ),
      ),
    );
  }
}
