import 'package:flutter/material.dart';

class Forget extends StatelessWidget {
  Function(BuildContext) onTap;

  Forget({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(context);
      },
      child: Container(
        height: 56,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Forgot Password?',
              style: TextStyle(
                color: Color(0xFFF5F5F5),
                fontSize: 12,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w400,
                letterSpacing: 0.18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
