import 'package:b/components/app_version.dart';
import 'package:flutter/material.dart';
import 'package:b/components/my_button.dart';

class ProfileBottom extends StatefulWidget {
  const ProfileBottom({Key? key}) : super(key: key);

  @override
  State<ProfileBottom> createState() => _ProfileBottomState();
}

class _ProfileBottomState extends State<ProfileBottom> {
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        height: 41,
        child: AppVersion(
          onTap: signUserIn,
        ),
      ),
    );
  }
}
