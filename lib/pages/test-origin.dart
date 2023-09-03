import 'package:flutter/material.dart';

class TrapeziumClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width, 0.0);
    path.lineTo(size.width * 53 / 100, 0.0);
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
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.centerLeft,
              fit: BoxFit.fitHeight,
              image: NetworkImage(
                  'https://media.sproutsocial.com/uploads/2014/02/Facebook-Campaign-Article-Main-Image2.png'),
            ),
          ),
        ),
        ClipPath(
          clipper: TrapeziumClipper(),
          child: Container(
            color: Colors.white,
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
