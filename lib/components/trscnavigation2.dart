import 'package:flutter/material.dart';

class TrscNav extends StatelessWidget {
  final Function()? onTap;

  const TrscNav({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  ClipRRect(
                    child: Image.asset(
                      'lib/images/transaction-yellow.png',
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Transactions',
                    style: TextStyle(
                      color: Color(0xFFE6B014),
                      fontSize: 12,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w600,
                      height: 1.40,
                      letterSpacing: 0.18,
                    ),
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
