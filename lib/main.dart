import 'package:b/pages/forgotpassword.dart';
import 'package:b/screen/home5.dart';
import 'package:b/screen/login.dart';
import 'package:b/screen/profile.dart';
import 'package:b/screen/splash.dart';
import 'package:b/widgets/bottomprofile.dart';
import 'package:flutter/material.dart';
import 'package:b/screen/transaction.dart';
import 'package:b/widgets/tripezuim.dart';
import 'package:b/pages/frame19.dart';
import 'package:b/pages/resetpassword.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
 /*
      debugShowCheckedModeBanner: false,
      home: Bottom(),*/