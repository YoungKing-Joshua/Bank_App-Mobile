import 'package:flutter/material.dart';
import 'package:b/components/app_version.dart';
import 'package:b/pages/test.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        height: 41,
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
        child: CustomScrollView(slivers: [
          SliverToBoxAdapter(
            child: SizedBox(height: 264, child: _head()),
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
        ]),
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
                child: Column(children: [
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Opacity(
                          opacity: 0.80,
                          child: Text('Account Balance',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  fontFamily: 'Open Sans',
                                  height: 1.20,
                                  color: Colors.white)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 2),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
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
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Opacity(
                              opacity: 0.80,
                              child: Text(
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
                            ),
                            const SizedBox(width: 8),
                            Opacity(
                              opacity: 0.80,
                              child: Text(
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
                            ),
                          ],
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
}
