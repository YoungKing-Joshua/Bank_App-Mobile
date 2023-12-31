import 'package:flutter/material.dart';

class TermsButton extends StatelessWidget {
  final Function()? onTap;

  const TermsButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 17.52, vertical: 16),
                    child: Text('Terms and Conditions',
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
