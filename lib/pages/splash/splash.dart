import 'dart:async';

import 'package:blinkit_clone_flutter/Widgets/UiHelper.dart';
import 'package:blinkit_clone_flutter/domain/constants/Colors.dart';
import 'package:blinkit_clone_flutter/pages/login/LoginPage.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 1),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ),
        );
      },
    );
  }

  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: AppColor.scaffoldbackgroung,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Uihelper.CustomImage(
              img: "BlinkitLogo.png",
            ),
          ],
        ),
      ),
    );
  }
}
