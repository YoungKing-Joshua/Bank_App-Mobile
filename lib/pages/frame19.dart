import 'package:flutter/material.dart';

class Bottomsheet extends StatefulWidget {
  const Bottomsheet({Key? key}) : super(key: key);

  @override
  State<Bottomsheet> createState() => _Bottomsheet();
}

class _Bottomsheet extends State<Bottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Center(
      
      child: ElevatedButton(
        child: const Text('Model Bottom Sheet'),
        onPressed: () {
          showSheet(context);
        },
      ),
    );
  }

  Future<dynamic> showSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SizedBox(
              child: Container(
            height: 555,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32),
                topRight: Radius.circular(32),
              ),
            ),
            child: Stack(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Container(
                      width: 39,
                      height: 5,
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          ));
        });
  }
}
