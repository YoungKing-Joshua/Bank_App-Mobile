import 'package:flutter/material.dart';

class HomeNav extends StatelessWidget {
  final Function(BuildContext) onTap;

  HomeNav({required this.onTap});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(context); 
      },
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
                      'lib/images/home-icon.png',
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Home',
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
