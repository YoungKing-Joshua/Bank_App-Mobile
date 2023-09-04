import 'package:flutter/material.dart';
import 'package:b/screen/home1.dart';

import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    // Delay for 2 seconds and then navigate to the desired page
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Home(), // Replace with your destination page
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset('lib/images/splash.png', width: 130, height: 80),
    );
  }
}
