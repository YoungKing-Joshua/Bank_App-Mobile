import 'package:flutter/material.dart';

class Transaction extends StatefulWidget {
  const Transaction({Key? key}) : super(key: key);

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  List Trnsc = ['All', 'Debit', 'Credit'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(child: _head()),
            ),
            SliverList(delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ListTile(
                  title: Text(
                    'GHC 50.00',
                    style: TextStyle(
                      color: Color(0xFF212121),
                      fontSize: 16,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w700,
                      height: 1.20,
                    ),
                  ),
                  subtitle: Text(
                    'Gift',
                    style: TextStyle(
                      color: Color(0xFF616161),
                      fontSize: 12,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w400,
                      height: 1.40,
                      letterSpacing: 0.18,
                    ),
                  ),
                  trailing: Text(
                    '01-02-2021',
                    style: TextStyle(
                      color: Color(0xFF616161),
                      fontSize: 10,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w400,
                      height: 1.40,
                      letterSpacing: 0.18,
                    ),
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }

  Widget _head() {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              width: double.infinity,
              height: 66,
              decoration: BoxDecoration(
                color: Color(0xFF022E64),
              ),
              child: Stack(children: [
                Positioned(
                    top: 5,
                    left: 340,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: Container(
                        height: 40,
                        width: 40,
                        color: Color.fromRGBO(250, 250, 250, .1),
                        child: Icon(
                          Icons.notification_add_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Good afternoon',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 11,
                            color: Color.fromARGB(255, 224, 223, 223)),
                      ),
                      Text(
                        'YoungKing Joshua',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 66),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 48,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(color: Color(0x51E1E6F0)),
                child: Column(children: [
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Opacity(
                          opacity: 0.80,
                          child: Text('Transactions',
                              style: TextStyle(
                                color: Color(0xFF001530),
                                fontSize: 18,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w600,
                                height: 1.20,
                              )),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 114),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 39,
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(color: Color(0x51E1E6F0)),
                child: Column(children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ...List.generate(3, (index) {
                            return Container(
                              height: 39,
                              width: 114,
                              alignment: Alignment.center,
                              child: Text(
                                Trnsc[index],
                                style: TextStyle(
                                    color: Color(0xFF001530),
                                    fontSize: 14,
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.w600,
                                    height: 1.20),
                              ),
                            );
                          })
                        ]),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ],
    );
  }
}