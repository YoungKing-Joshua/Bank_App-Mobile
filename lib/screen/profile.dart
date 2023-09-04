import 'package:b/components/app_version.dart';
import 'package:b/components/termsbutton.dart';
import 'package:b/widgets/bottomprofile.dart';
import 'package:flutter/material.dart';
import 'package:b/components/changepws.dart';
import 'package:b/components/logoutbutton.dart';
import 'package:b/components/my_button4.dart';
import 'package:b/components/square_tile.dart';
import 'package:b/widgets/top4.dart';

class Profile extends StatefulWidget {
  Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  // text editing controllers
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        height: 41,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(),
              child: AppVersion(
                onTap: signUserIn,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Top(),
            Container(
              width: double.infinity,
              height: 156,
              decoration: BoxDecoration(
                color: Color(0xFFFDF8EC),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'lib/images/Union(1).png',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Container(
                      width: 185,
                      height: 133,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(),
                            child: Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          child: Opacity(
                                            opacity: 0.80,
                                            child: Text(
                                              'FIRST NAME',
                                              style: TextStyle(
                                                color: Color(0xFF022E64),
                                                fontSize: 10,
                                                fontFamily: 'Open Sans',
                                                fontWeight: FontWeight.w600,
                                                height: 1.20,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Opacity(
                                          opacity: 0.80,
                                          child: Text(
                                            'JOHN',
                                            style: TextStyle(
                                              color: Color(0xFF022E64),
                                              fontSize: 14,
                                              fontFamily: 'Open Sans',
                                              fontWeight: FontWeight.w400,
                                              height: 1.20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          child: Opacity(
                                            opacity: 0.80,
                                            child: Text(
                                              'OTHER NAMES',
                                              style: TextStyle(
                                                color: Color(0xFF022E64),
                                                fontSize: 10,
                                                fontFamily: 'Open Sans',
                                                fontWeight: FontWeight.w600,
                                                height: 1.20,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Opacity(
                                          opacity: 0.80,
                                          child: Text(
                                            'JIMOH',
                                            style: TextStyle(
                                              color: Color(0xFF022E64),
                                              fontSize: 14,
                                              fontFamily: 'Open Sans',
                                              fontWeight: FontWeight.w400,
                                              height: 1.20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 11),
                          Container(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 4),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        child: Opacity(
                                          opacity: 0.80,
                                          child: Text(
                                            'GENDER',
                                            style: TextStyle(
                                              color: Color(0xFF022E64),
                                              fontSize: 10,
                                              fontFamily: 'Open Sans',
                                              fontWeight: FontWeight.w600,
                                              height: 1.20,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Opacity(
                                        opacity: 0.80,
                                        child: Text(
                                          'MALE',
                                          style: TextStyle(
                                            color: Color(0xFF022E64),
                                            fontSize: 14,
                                            fontFamily: 'Open Sans',
                                            fontWeight: FontWeight.w400,
                                            height: 1.20,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 25, vertical: 4),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        child: Opacity(
                                          opacity: 0.80,
                                          child: Text(
                                            'TITLE',
                                            style: TextStyle(
                                              color: Color(0xFF022E64),
                                              fontSize: 10,
                                              fontFamily: 'Open Sans',
                                              fontWeight: FontWeight.w600,
                                              height: 1.20,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Opacity(
                                        opacity: 0.80,
                                        child: Text(
                                          'MR',
                                          style: TextStyle(
                                            color: Color(0xFF022E64),
                                            fontSize: 14,
                                            fontFamily: 'Open Sans',
                                            fontWeight: FontWeight.w400,
                                            height: 1.20,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 11),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  child: Opacity(
                                    opacity: 0.80,
                                    child: Text(
                                      'ID',
                                      style: TextStyle(
                                        color: Color(0xFF022E64),
                                        fontSize: 10,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.w600,
                                        height: 1.20,
                                      ),
                                    ),
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.80,
                                  child: Text(
                                    '23399922',
                                    style: TextStyle(
                                      color: Color(0xFF022E64),
                                      fontSize: 14,
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.w400,
                                      height: 1.20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 48,
              decoration: BoxDecoration(
                color: Color(0x51E1E6F0),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          child: Text('Account Settings',
                              style: TextStyle(
                                color: Color(0xFF001530),
                                fontSize: 14,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w600,
                                height: 1.40,
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            MyButton(
              onTap: signUserIn,
            ),
            LogoutButton(
              onTap: signUserIn,
            ),
            Container(
              width: double.infinity,
              height: 48,
              decoration: BoxDecoration(
                color: Color(0x51E1E6F0),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          child: Text('About',
                              style: TextStyle(
                                color: Color(0xFF001530),
                                fontSize: 14,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w600,
                                height: 1.20,
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            TermsButton(
              onTap: signUserIn,
            ),
            MyButton4(
              onTap: signUserIn,
            ),
          ],
        ),
      ),
    );
  }
}
