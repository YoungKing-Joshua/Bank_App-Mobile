import 'package:flutter/material.dart';
import 'package:b/components/app_version.dart';
import 'package:b/data/money.dart';
import 'package:flutter/services.dart';
import 'package:b/components/homenavigation.dart';
import 'package:b/components/trscnavigation.dart';
import 'package:b/widgets/tripezuim.dart';
import 'dart:convert';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),

      /*Row(
        children: [
          Expanded(
            flex: 1, // Adjust the flex values as needed
            child: Container(
              height: 41,
              color: Color(0xFFE0AD0F), // Color for the left box
              child: AppVersion(
                onTap: signUserIn,
              ),
            ),
          ),
          Expanded(
            flex: 1, // Adjust the flex values as needed
            child: Container(
              height: 41,

              color: Color(0xFFA07701), // Color for the right box
              child: AppVersion(
                onTap: signUserIn,
              ),
            ),
          ),
        ],
      ),
      */
      body: SafeArea(
          child: Column(
        children: [_head(), Expanded(child: _scroll())],
      )),
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ClipRRect(
                            child: Image.asset('lib/images/bnk',
                                width: 81, height: 32)),
                      ],
                    ),
                  ],
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
                                    color: Color.fromARGB(255, 224, 223, 223)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4),
                              child: Text(
                                'YoungKing Joshua',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
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
                height: 156,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment(0.44, -0.90),
                  end: Alignment(-0.44, 0.9),
                  colors: [Color(0xFFE0AD0F), Color(0xFFA07701)],
                )),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Account Balance',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      fontFamily: 'Open Sans',
                                      height: 1.20,
                                      color: Colors.white)),
                            ],
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Text(
                              'GHC 10,000.00',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 36,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w700,
                                height: 1.20,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Checking Account',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w600,
                                height: 1.20,
                                letterSpacing: 1.50,
                              ),
                            ),
                            Text(
                              '875431143137098707',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w600,
                                height: 1.20,
                                letterSpacing: 1.50,
                              ),
                            ),
                          ],
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 222),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 42,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(color: Color(0x51E1E6F0)),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 17,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 17,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Recent Transactions',
                                      style: TextStyle(
                                        color: Color(0xFF001530),
                                        fontSize: 14,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.w600,
                                        height: 1.20,
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      'See All',
                                      style: TextStyle(
                                        color: Color(0xFF022E64),
                                        fontSize: 12,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
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
    );
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
          return ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.76, vertical: 5.26),
                      decoration: BoxDecoration(
                        color: items[index].transactionDirection == 'C'
                            ? Color(0x14E0AD0F)
                            : Color(
                                0x1478C8E1), // Change to your desired color for 'C'
                        // You can change this to another color or remove it
                        borderRadius: BorderRadius.circular(5.26),
                      ),
                      child: Center(
                        child: Text(
                          items[index].transactionDirection == 'C'
                              ? 'Credit' // Text for 'C'
                              : items[index].transactionDirection == 'D'
                                  ? 'Debit' // Text for 'D'
                                  : '', // You can change this to another text or remove it
                          style: TextStyle(
                            color: items[index].transactionDirection == 'C'
                                ? Color(0xFFE0AD0F)
                                : Color(
                                    0xFF022E64), // You can change the text color
                            fontSize: 9,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w600,
                            letterSpacing:
                                0.18, // You can change the text color
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
            },
          );
        }
        return Center(child: CircularProgressIndicator());
      },
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
      // Handle any potential errors during data loading
      throw e;
    }
  }
}
