import 'package:b/screen/home4.dart';
import 'package:flutter/material.dart';
import 'package:b/data/money.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:b/widgets/top3.dart';
import 'package:b/widgets/bottomprofile.dart';

class Home3 extends StatefulWidget {
  const Home3({Key? key}) : super(key: key);

  @override
  State<Home3> createState() => _Home3State();
}

class _Home3State extends State<Home3> {
  @override
  void initState() {
    super.initState();

    
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Home4(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ProfileBottom(),
      body: SafeArea(
          child: Column(
        children: [
          Top(),
          Expanded(
              child: Center(
                  child: Image.asset(
            'lib/images/splash.png',
            width: 62,
            height: 38.15,
          )))
        ],
      )),
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
                                0x1478C8E1), 
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
                                : Color(
                                    0xFF022E64), 
                            fontSize: 9,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w600,
                            letterSpacing:
                                0.18, 
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
    
      throw e;
    }
  }
}
