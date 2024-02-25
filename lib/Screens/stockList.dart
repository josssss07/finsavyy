import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:managment/Screens/CompanyInfo.dart';
import 'package:managment/models/modelStocklist.dart';
import 'package:managment/widgets/stockCard.dart';

class StockList extends StatefulWidget {
  const StockList({Key? key}) : super(key: key);

  @override
  State<StockList> createState() => _StockListState();
}

class _StockListState extends State<StockList> {
  List<Stocks> _Slist = [];
  var isLoaded = false;

  // calling the initState method
  @override
  void initState() {
    super.initState();
    fetchStocklist().then((value) {
      setState(() {
        _Slist.addAll(value);
        isLoaded = true;
      });
    });
  }

  Future<List<Stocks>> fetchStocklist() async {
    // creating a list to store the data
    List<Stocks> Slist = [];

    var url = Uri.parse('https://stocklist-api.onrender.com/stock-list-data');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var stocklists =
          jsonDecode(response.body)['stocks'] as Map<String, dynamic>;
      stocklists.forEach((key, value) {
        Slist.add(Stocks.fromJson(value));
      });
    }
    return Slist;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Stocks",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: SizedBox(),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(1000),
            bottomRight: Radius.circular(1000),
          ),
        ),
        leading: const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Icon(Icons.arrow_back, color: Colors.white, size: 30),
        ),
        backgroundColor: const Color(0xFF3C7867),
        // actions: const <Widget>[
        //   Padding(
        //     padding: EdgeInsets.only(right: 20.0),
        //     child: Icon(
        //       Icons.search,
        //       color: Colors.white,
        //       size: 30,
        //     ),
        //   ),
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Visibility(
          visible: isLoaded,
          replacement: const Center(
            child: CircularProgressIndicator(),
          ),
          child: ListView.builder(
            itemCount: _Slist.length,
            itemBuilder: (context, index) {
              if (_Slist[index].CompanyName == null ||
                  _Slist[index].CompanySymbol == null ||
                  _Slist[index].StockValue == null) {
                return const SizedBox(); // Return an empty widget
              } else {
                // Return the StockCard widget if none of the values are null
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AboutandChart(
                              ticker:
                                  "${_Slist[index].CompanySymbol ?? ""}.ns")),
                    );
                    print("${_Slist[index].CompanySymbol ?? ""}.ns");
                  },
                  child: StockCard(
                    stockName: _Slist[index].CompanyName ?? "",
                    stockSymbol: _Slist[index].CompanySymbol ?? "",
                    stockPrice: "₹ ${_Slist[index].StockValue ?? ""}",
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
