import 'package:flutter/material.dart';

class TrapeziumClipper extends CustomClipper<Path> {
  final Color topColor;
  final Color bottomColor;

  TrapeziumClipper({required this.topColor, required this.bottomColor});

  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width, 0.0);
    path.lineTo(size.width * 30 / 70, 0.0);
    path.lineTo(size.width * 1 / 3, size.height);
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TrapeziumClipper oldClipper) => false;
}

class TrapeziumStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(color: Colors.blue), // Top part color
        ),
        ClipPath(
          clipper: TrapeziumClipper(
            topColor: Colors.blue, // Top part color
            bottomColor: Colors.white, // Bottom part color
          ),
          child: Container(
            color: Colors.white, // Background color of the bottom part
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Text('1'),
                Text('2'),
                Text('3'),
                Text('4'),
                Text('5'),
                Text('6'),
              ],
              crossAxisAlignment: CrossAxisAlignment.center,
            ),
            width: double.infinity,
          ),
        ),
      ],
    );
  }
}
