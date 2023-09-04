import 'package:flutter/material.dart';

class Top extends StatelessWidget {
  const Top({Key? key});

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return _head();
  }

   Widget _head() {
    return Container(
      width: double.infinity,
      height: 66,
      decoration: BoxDecoration(
        color: Color(0xFF022E64),
      ),
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ClipRRect(
                    child: Image.asset(
                      'lib/images/bnk',
                      width: 81,
                      height: 32,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('lib/images/arrow-left.png',
                      height: 28, width: 28),
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
    );
  }

}
