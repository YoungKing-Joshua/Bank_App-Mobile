import 'package:flutter/material.dart';
import 'package:b/components/changebutton.dart';
import 'package:b/components/my_textfield.dart';
import 'package:b/components/square_tile.dart';

class ResetPassword extends StatelessWidget {
  ResetPassword({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF022E64),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 66,
              decoration: BoxDecoration(
                color: Color(0xFF022E64),
              ),
              child: Stack(children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ClipRRect(
                            child: Image.asset('lib/images/bnk',
                                width: 81, height: 32)),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('lib/images/face2',
                              height: 31, width: 11),
                          Text(
                            'Back',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 87),
                  MyTextField(
                    controller: usernameController,
                    hintText: 'Old Password',
                    obscureText: false,
                  ),
                  const SizedBox(height: 16),
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
                  const SizedBox(height: 16),
                  ChangePassword(onTap: signUserIn),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
