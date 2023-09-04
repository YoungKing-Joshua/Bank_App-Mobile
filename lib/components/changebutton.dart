import 'package:flutter/material.dart';

class ChangePassword extends StatelessWidget {
  final Function(BuildContext) onTap;

  const ChangePassword({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(context);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        height: 56,
        decoration: BoxDecoration(
          color: Color(0xFFE6B014),
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Center(
          child: Text(
            'Change Password',
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
