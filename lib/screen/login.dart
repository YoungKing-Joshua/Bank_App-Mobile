import 'package:b/pages/forgotpassword.dart';
import 'package:b/screen/splash.dart';
import 'package:flutter/material.dart';
import 'package:b/components/loginB.dart';
import 'package:b/components/my_textfield.dart';
import 'package:b/components/square_tile.dart';
import 'package:b/components/forgetpswd.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn(BuildContext context) {
  // Use Navigator to push a new route (page) onto the stack
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) =>
          Splash(), // Replace YourNewPage with the desired page widget
    ),
  );
}

 void sendForget(BuildContext context) {
  // Use Navigator to push a new route (page) onto the stack
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) =>
          ForgotPassword(), // Replace YourNewPage with the desired page widget
    ),
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF022E64),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFF022E64),
        height: 56,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 42),
              child: Forget(
                onTap: sendForget,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 86.45),
              Image.asset('lib/images/bnk'),
              const SizedBox(height: 91),
              MyTextField(
                controller: usernameController,
                hintText: 'Email',
                obscureText: false,
              ),
              const SizedBox(height: 16),
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              const SizedBox(height: 68),
              MyButton(onTap: signUserIn),
            ],
          ),
        ),
      ),
    );
  }
}
