import 'package:b/screen/login.dart';
import 'package:flutter/material.dart';
import 'package:b/widgets/top4.dart';
import 'package:b/components/changebutton.dart';
import 'package:b/components/my_textfield.dart';
import 'package:b/components/square_tile.dart';

class ResetPassword extends StatelessWidget {
  ResetPassword({super.key});

  // text editing controllers
  final password1Controller = TextEditingController();
  final password2Controller = TextEditingController();
  final password3Controller = TextEditingController();

  // sign user in method
  void SendLogin(BuildContext context) {
    // Use Navigator to push a new route (page) onto the stack
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) =>
            LoginPage(), // Replace YourNewPage with the desired page widget
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
                  ChangePassword(onTap: SendLogin),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
