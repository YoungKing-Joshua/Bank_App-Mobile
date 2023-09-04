import 'package:b/screen/home6.dart';
import 'package:b/screen/profile.dart';
import 'package:flutter/material.dart';
import 'package:b/widgets/top6.dart';
import 'package:b/components/changebutton.dart';
import 'package:b/components/my_textfield.dart';

class ResetPassword extends StatefulWidget {
  ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  // text editing controllers
  final password1Controller = TextEditingController();

  final password2Controller = TextEditingController();

  final password3Controller = TextEditingController();

  // sign user in method
  void sendProfile(BuildContext context) {
    // Use Navigator to push a new route (page) onto the stack
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) =>
            Home6(), // Replace YourNewPage with the desired page widget
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF022E64),
      body: SafeArea(
        child: Column(
          children: [
            Top(),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 141),
                  MyTextField(
                    controller: password1Controller,
                    hintText: 'Old Password',
                    obscureText: false,
                  ),
                  const SizedBox(height: 16),
                  MyTextField(
                    controller: password2Controller,
                    hintText: 'New Password',
                    obscureText: true,
                  ),
                  const SizedBox(height: 16),
                  MyTextField(
                    controller: password3Controller,
                    hintText: 'Confirm New Password',
                    obscureText: true,
                  ),
                  const SizedBox(height: 47),
                  ChangePassword(onTap: sendProfile),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
