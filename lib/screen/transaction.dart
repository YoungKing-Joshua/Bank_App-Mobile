import 'dart:convert';

import 'package:b/screen/profile.dart';
import 'package:flutter/material.dart';
import 'package:b/widgets/tripezuim.dart';
import 'package:b/data/money.dart';
import 'package:b/components/homenavigation2.dart';
import 'package:b/components/trscnavigation2.dart';
import 'package:flutter/services.dart';
import 'package:b/screen/frame19.dart';
import 'package:b/screen/home5.dart';

class Transaction extends StatefulWidget {
  const Transaction({Key? key}) : super(key: key);

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  List<String> transactionTypes = ['All', 'Debit', 'Credit'];
  String selectedTransactionType = 'All';

  void sendHome() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Home(),
      ),
    );
  }

  void sendTrsc() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Transaction(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Profile(),
            ),
          );
        },
        child: Scaffold(
          body: SafeArea(
              child: Column(
            children: [_buildHeader(), Expanded(child: _scroll())],
          )),
          bottomNavigationBar: BottomAppBar(
            height: 72,
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
                Container(
                  child: ClipPath(
                    clipper: TrapeziumClipper(),
                    child: Container(
                      color: Color(0xFF022E64),
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
          ),
        ));
  }

  Widget _scroll() {
    return FutureBuilder<List<CustomerTransactionData>>(
      future: ReadJsonData(),
      builder: (context, data) {
        if (data.hasError) {
          return Center(child: Text("${data.error}"));
        } else if (data.hasData) {
          var items = data.data as List<CustomerTransactionData>;
          items = items.reversed.toList();
          if (selectedTransactionType != 'All') {
            items = items
                .where((item) =>
                    item.transactionDirection ==
                    (selectedTransactionType == 'Debit' ? 'D' : 'C'))
                .toList();
          }
          return ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  if (items[index].transactionAmount == 10000) {
                    CustomBottomSheet().showSheet(context);
                  }
                },
                child: _listtile(items, index),
              );
            },
          );
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }

  ListTile _listtile(List<CustomerTransactionData> items, int index) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(60.0),
        child: Container(
          width: 32.0,
          height: 32.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                items[index].transactionDirection == 'C'
                    ? Color(0xFFE0AD0F)
                    : Color(0xFF022E64),
                items[index].transactionDirection == 'C'
                    ? Color(0xFFA07701)
                    : Color(0xFF0E5CBD),
              ],
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
      title: Row(
        children: [
          Text(
            'GHC ' + items[index].transactionAmount.toString(),
            style: TextStyle(
              color: Color(0xFF212121),
              fontSize: 16,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w700,
              height: 1.20,
            ),
          ),
          const SizedBox(width: 7.01),
          Container(
            width: 42.52,
            height: 22.51,
            padding:
                const EdgeInsets.symmetric(horizontal: 8.76, vertical: 5.26),
            decoration: BoxDecoration(
              color: items[index].transactionDirection == 'C'
                  ? Color(0x14E0AD0F)
                  : Color(0x1478C8E1),
              borderRadius: BorderRadius.circular(5.26),
            ),
            child: Center(
              child: Text(
                items[index].transactionDirection == 'C'
                    ? 'Credit'
                    : items[index].transactionDirection == 'D'
                        ? 'Debit'
                        : '',
                style: TextStyle(
                  color: items[index].transactionDirection == 'C'
                      ? Color(0xFFE0AD0F)
                      : Color(0xFF022E64),
                  fontSize: 9,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.18,
                ),
              ),
            ),
          )
        ],
      ),
      subtitle: Row(
        children: [
          Text(
            '#',
            style: TextStyle(
              color: items[index].transactionDirection == 'C'
                  ? Color(0xFFE0AD0F)
                  : Color(0xFF022E64),
              fontSize: 12,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w700,
              height: 1.40,
              letterSpacing: 0.18,
            ),
          ),
          Text(
            items[index].transactionNarration.toString(),
            style: TextStyle(
              color: Color(0xFF616161),
              fontSize: 12,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w400,
              height: 1.40,
              letterSpacing: 0.18,
            ),
          ),
        ],
      ),
      trailing: Text(
        items[index].transactionDate.toString(),
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

  Future<List<CustomerTransactionData>> ReadJsonData() async {
    try {
      final jsondata =
          await rootBundle.loadString('lib/data/customer_data.json');
      final jsonData = json.decode(jsondata);

      final List<CustomerTransactionData> transactionDataList =
          (jsonData['customerTransactionData'] as List)
              .map((item) => CustomerTransactionData.fromJson(item))
              .toList();

      return transactionDataList;
    } catch (e) {
      
      throw e;
    }
  }
}
