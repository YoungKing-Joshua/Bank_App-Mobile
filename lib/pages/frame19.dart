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
        backgroundColor: Colors.transparent,
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
            child: Column(
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
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Transaction Details',
                      style: TextStyle(
                        color: Color(0xFF001530),
                        fontSize: 14,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w400,
                        height: 1.20,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Balance Before Transaction',
                            style: TextStyle(
                              color: Color(0xFF212121),
                              fontSize: 12,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w400,
                              height: 1.20,
                            ),
                          ),
                          Text(
                            'GHC 0.00',
                            style: TextStyle(
                              color: Color(0xFF212121),
                              fontSize: 12,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w700,
                              height: 1.20,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Balance After Transaction',
                            style: TextStyle(
                              color: Color(0xFF212121),
                              fontSize: 12,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w400,
                              height: 1.20,
                            ),
                          ),
                          Text(
                            'GHC 10,000.00',
                            style: TextStyle(
                              color: Color(0xFF212121),
                              fontSize: 12,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w700,
                              height: 1.20,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0x99E1E6F0),
                      width: .75,
                    ),
                  ),
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Transaction Date',
                            style: TextStyle(
                              color: Color(0xFF212121),
                              fontSize: 12,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w400,
                              height: 1.20,
                            ),
                          ),
                          Text(
                            '01-02-2021',
                            style: TextStyle(
                              color: Color(0xFF212121),
                              fontSize: 12,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w600,
                              height: 1.20,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Transaction Direction',
                            style: TextStyle(
                              color: Color(0xFF212121),
                              fontSize: 12,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w400,
                              height: 1.20,
                            ),
                          ),
                          Text(
                            'Credit',
                            style: TextStyle(
                              color: Color(0xFF212121),
                              fontSize: 12,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w600,
                              height: 1.20,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Transaction Narration',
                            style: TextStyle(
                              color: Color(0xFF212121),
                              fontSize: 12,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w400,
                              height: 1.20,
                            ),
                          ),
                          Text(
                            'Deposit',
                            style: TextStyle(
                              color: Color(0xFF212121),
                              fontSize: 12,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w600,
                              height: 1.20,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ));
        });
  }
}
