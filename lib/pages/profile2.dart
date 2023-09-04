import 'package:flutter/material.dart';
import 'package:b/widgets/tripezuim.dart';
import 'package:b/components/my_textfield.dart';
import 'package:b/components/square_tile.dart';

class TrapeziumStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                fit: BoxFit.fitHeight,
                image: NetworkImage(
                  './lib/images/face',
                ),
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
        ])
      ],
    );
  }
}




