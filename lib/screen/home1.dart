import 'package:flutter/material.dart';
import 'package:b/data/money.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:b/widgets/top1.dart';
import 'package:b/widgets/bottomprofile.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
