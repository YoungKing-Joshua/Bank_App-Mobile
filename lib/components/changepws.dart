import 'package:flutter/material.dart';

class ChangePswd extends StatelessWidget {
  Function(BuildContext) onTap;

  ChangePswd({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(context); // Pass the context to the callback
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 0),
        height: 56,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.black,
            width: .1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('lib/images/lock.png', height: 28, width: 28),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 17.52, vertical: 16),
                    child: Text('Change Account Password',
                        style: TextStyle(
                            color: Color(0xFF022E64),
                            fontSize: 14,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w400,
                            height: 1.40,
                            letterSpacing: 0.18)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
