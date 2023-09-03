import 'package:flutter/material.dart';
import 'package:b/pages/test.dart';

class Transaction extends StatefulWidget {
  const Transaction({Key? key}) : super(key: key);

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  List<String> transactionTypes = ['All', 'Debit', 'Credit'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _buildHeader(),
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return _buildTransactionItem();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
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
            ClipPath(
              clipper: TrapeziumClipper(),
              child: Container(
                color: Colors.white, // Set the color for the bottom part
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[],
                  crossAxisAlignment: CrossAxisAlignment.center,
                ),
                width: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 66,
          decoration: BoxDecoration(
            color: Color(0xFF022E64),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ClipRRect(
                          child: Image.asset(
                            'lib/images/bnk',
                            width: 81,
                            height: 32,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 16),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('lib/images/Union.png',
                            height: 42, width: 52),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Text(
                              'Good afternoon',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 11,
                                color: Color.fromARGB(255, 224, 223, 223),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Text(
                              'Mr. John Jimoh',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w600,
                                height: 1.20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 48,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(color: Color(0x51E1E6F0)),
          child: Column(
            children: [
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Opacity(
                      opacity: 0.80,
                      child: Text(
                        'Transactions',
                        style: TextStyle(
                          color: Color(0xFF001530),
                          fontSize: 18,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w600,
                          height: 1.20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 39,
          padding: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(color: Color(0x51E1E6F0)),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...transactionTypes.map((type) {
                      return Container(
                        height: 39,
                        width: 114,
                        alignment: Alignment.center,
                        child: Text(
                          type,
                          style: TextStyle(
                            color: Color(0xFF001530),
                            fontSize: 14,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w600,
                            height: 1.20,
                          ),
                        ),
                      );
                    }).toList(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTransactionItem() {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(60.0),
        child: Container(
          width: 32.0,
          height: 32.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF022E64), Color(0xFF0E5CBD)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Image.asset(
              'lib/images/money-recive.png',
            ),
          ),
        ),
      ),
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
  }
}
