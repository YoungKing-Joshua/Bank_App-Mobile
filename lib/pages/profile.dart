import 'package:flutter/material.dart';
import 'package:b/components/my_button2.dart';
import 'package:b/components/my_button3.dart';
import 'package:b/components/my_textfield.dart';
import 'package:b/components/square_tile.dart';

class Profile extends StatelessWidget {
  Profile({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                Positioned(
                    top: 5,
                    left: 340,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Image.asset('lib/images/bnk'))),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 20),
                  child: Row(
                    children: [
                      Image.asset('lib/images/face2', height: 31, width: 11),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Good afternoon',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 11,
                                color: Color.fromARGB(255, 224, 223, 223)),
                          ),
                          Text(
                            'YoungKing Joshua',
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
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Color(0xFF022E34),
              ),
            ),
            MyButton(
              onTap: signUserIn,
            ),
            MyButton3(
              onTap: signUserIn,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.18,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
