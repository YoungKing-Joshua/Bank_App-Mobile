import 'package:b/pages/forgotpassword.dart';
import 'package:b/pages/home.dart';
import 'package:b/pages/login.dart';
import 'package:b/pages/profile.dart';
import 'package:b/pages/splash.dart';
import 'package:b/widgets/bottomprofile.dart';
import 'package:flutter/material.dart';
import 'package:b/pages/transaction.dart';
import 'package:b/widgets/tripezuim.dart';
import 'package:b/pages/frame19.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
 /*
      debugShowCheckedModeBanner: false,
      home: Bottom(),*/