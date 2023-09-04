import 'package:b/screen/login.dart';
import 'package:b/widgets/top5.dart';
import 'package:flutter/material.dart';
import 'package:b/components/resetbutton.dart';
import 'package:b/components/my_textfield.dart';
import 'package:b/components/square_tile.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
   void sendLogin(BuildContext context) {
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
            SizedBox(height: 174),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyTextField(
                    controller: usernameController,
                    hintText: 'New Password',
                    obscureText: true,
                  ),
                  const SizedBox(height: 16),
                  MyTextField(
                    controller: passwordController,
                    hintText: 'Confirm New Password',
                    obscureText: true,
                  ),
                  const SizedBox(height: 68),
                  ResetButton(onTap: sendLogin),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
