import 'package:b/screen/home2.dart';
import 'package:flutter/material.dart';
import 'package:b/data/money.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:b/widgets/top1.dart';
import 'package:b/widgets/bottomprofile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();

   
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Home2(), 
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ProfileBottom(),
      body: SafeArea(
          child: Column(
        children: [
          Top(),
          Expanded(
              child: Center(
                  child: Image.asset(
            'lib/images/splash.png',
            width: 62,
            height: 38.15,
          )))
        ],
      )),
    );
  }
}
