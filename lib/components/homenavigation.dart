import 'package:flutter/material.dart';

class HomeNav extends StatelessWidget {
  final Function()? onTap;

  const HomeNav({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 0),
        height: 56,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: .1,
          ),
          color: Colors.white,
        ),
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
