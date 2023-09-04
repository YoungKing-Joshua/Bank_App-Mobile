import 'package:b/components/app_version.dart';
import 'package:flutter/material.dart';
import 'package:b/components/loginB.dart';
import 'package:b/components/homenavigation.dart';
import 'package:b/components/trscnavigation.dart';
import 'package:b/widgets/tripezuim.dart';
import 'package:b/screen/home5.dart';
import 'package:b/screen/transaction.dart';

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

void sendHome(BuildContext context) {
 
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) =>
          Home(), 
    ),
  );
}

void sendTrsc(BuildContext context) {
 
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) =>
          Transaction(), 
    ),
  );
}

BottomAppBar _bottom() {
  return BottomAppBar(
    height: 72,
    child: Stack(
      children: <Widget>[
      
        Container(
          decoration: BoxDecoration(
            color: Color(0xFF022E64),
          ),
        ),
        
        Container(
          child: ClipPath(
            clipper: TrapeziumClipper(),
            child: Container(
              color: Colors.white,
              
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              flex: 1, 
              child: Container(
                child: HomeNav(
                  onTap: sendHome,
                ),
              ),
            ),
            Expanded(
              flex: 1, 
              child: Container(
                child: TrscNav(
                  onTap: sendTrsc,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
