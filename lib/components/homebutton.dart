import 'package:flutter/material.dart';

class AppVersion extends StatelessWidget {
  final Function()? onTap;

  const AppVersion({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'App Version',
                style: TextStyle(
                  color: Color(0xFF022E64),
                  fontSize: 12,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w600,
                  height: 1.40,
                  letterSpacing: 0.18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}