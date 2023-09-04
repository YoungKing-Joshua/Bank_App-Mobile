import 'package:b/components/app_version.dart';
import 'package:flutter/material.dart';
import 'package:b/components/my_button.dart';
import 'package:b/components/homenavigation.dart';
import 'package:b/components/trscnavigation.dart';
import 'package:b/widgets/tripezuim.dart';

class ProfileBottom extends StatefulWidget {
  const ProfileBottom({Key? key}) : super(key: key);

  @override
  State<ProfileBottom> createState() => _ProfileBottomState();
}

class _ProfileBottomState extends State<ProfileBottom> {
  @override
  Widget build(BuildContext context) {
    return _bottom();
  }
}

void signUserIn() {}

BottomAppBar _bottom() {
  return BottomAppBar(
    height: 72,
    child: Stack(
      children: <Widget>[
        // Top part with blue color
        Container(
          decoration: BoxDecoration(
            color: Color(0xFF022E64),
          ),
        ),
        // Bottom part with a white trapezium shape
        Container(
          child: ClipPath(
            clipper: TrapeziumClipper(),
            child: Container(
              color: Colors.white,
              // Set the color for the bottom part
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              flex: 1, // Adjust the flex values as needed
              child: Container(
                child: HomeNav(
                  onTap: signUserIn,
                ),
              ),
            ),
            Expanded(
              flex: 1, // Adjust the flex values as needed
              child: Container(
                child: TrscNav(
                  onTap: signUserIn,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
