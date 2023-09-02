import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;

  const MyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        height: 56,
        decoration: BoxDecoration(
          color: Color(0xFFE6B014),
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Center(
          child: Text(
            'Login',
            style: TextStyle(
              color: Color(0xFF212121),
              fontSize: 20,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w700,
              letterSpacing: 0.20,
            ),
          ),
        ),
      ),
    );
  }
}
