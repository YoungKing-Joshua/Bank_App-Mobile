import 'package:flutter/material.dart';

class TrapeziumClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final double trapeziumHeight =
        size.height; // Set the height of the trapezium

    path.moveTo(size.width, 0.0);
    path.lineTo(size.width * 53 / 100,
        0.0); // Adjust the points to create a right-angle trapezium
    path.lineTo(size.width * 47 / 100, trapeziumHeight);
    path.lineTo(size.width, trapeziumHeight);
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
        // Top part with blue color
        Container(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
        ),
        // Bottom part with a white trapezium shape
        ClipPath(
          clipper: TrapeziumClipper(),
          child: Container(
            color: Colors.white, // Set the color for the bottom part
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
