import 'package:flutter/material.dart';
import 'package:managment/Screens/stockList.dart';
import 'package:managment/models/modelGraph.dart';

import 'package:http/http.dart' as http;
import 'package:managment/models/modelSummaryandName.dart';
import 'package:managment/widgets/AboutUs.dart';
import 'dart:convert';

import 'package:managment/widgets/DataTable.dart';
import 'package:managment/widgets/LineChart.dart';

class AboutandChart extends StatefulWidget {
  final String ticker;

  const AboutandChart({
    super.key,
    required this.ticker,
  });

  @override
  State<AboutandChart> createState() => _AboutandChartState();
}

class _AboutandChartState extends State<AboutandChart> {
  List<SalesData> _closingPriceList_initial = [];
  List<List<String>> _DataTableInitial = [];
  String? _longBusinessSummary = '';
  String? _longName = '';

  // calling the initState method
  @override
  void initState() {
    super.initState();
    fetchClosingPrice().then((value) {
      setState(() {
        _closingPriceList_initial.addAll(value);
      });
    });
    fetchDataTable().then((value) {
      setState(() {
        _DataTableInitial.addAll(value);
      });
    });
    fetchSandD().then((salesData) {
      setState(() {
        _longName = salesData.longName;
        _longBusinessSummary = salesData.longBusinessSummary;
      });
    });
  }

  Future<SummaryName> fetchSandD() async {
    var url = Uri.parse(
        'https://stocks2.onrender.com/stock-information?ticker=${widget.ticker}');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      return SummaryName.fromJson(json);
    } else {
      throw Exception('Failed to fetch closing price');
    }
  }

  Future<List<SalesData>> fetchClosingPrice() async {
    List<SalesData> closingPriceList_initial = [];

    var url = Uri.parse(
        'https://news-closeprice-api.onrender.com/close-prices?ticker=${widget.ticker}');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var cp =
          jsonDecode(response.body)['close_prices'] as Map<String, dynamic>;
      cp.forEach((key, value) {
        closingPriceList_initial.add(SalesData.fromJson(key, value.toDouble()));
      });
    }
    return closingPriceList_initial;
  }

  Future<List<List<String>>> fetchDataTable() async {
    List<List<String>> DataTableInitial = [];

    var url = Uri.parse(
        'https://stocks2.onrender.com/stock-information?ticker=${widget.ticker}');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonData =
          jsonDecode(response.body)['information'] as Map<String, dynamic>;
      jsonData.remove('companyOfficers');
      jsonData.remove('longBusinessSummary');
      jsonData.forEach((key, value) {
        DataTableInitial.add([key, value.toString()]);
      });
    }
    return DataTableInitial;
  }

  @override
  Widget build(BuildContext context) {
    String text = _longBusinessSummary ?? "";
    List<String> words = text.split(' ');
    int numberOfWords = words.length;

    double h = 0;
    if (numberOfWords < 100) {
      h = 400;
    } else if (numberOfWords > 100 && numberOfWords < 150) {
      h = 800;
    } else if (numberOfWords > 200) {
      h = 1000;
    }
    print(numberOfWords);
    // The main widget
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Stocks",
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const StockList()),
            );
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Icon(Icons.arrow_back, color: Colors.black, size: 30),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                child: SizedBox(
                  height: 500,
                  child: LineChartWithZoomAndInteractivity(
                      salesData: _closingPriceList_initial),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: h,
                child: AboutWidget(
                  companyName: _longName ?? "",
                  companyDescription: _longBusinessSummary ?? "",
                ),
              ),
              ListView(
                shrinkWrap: true,
                children: [
                  Dtable(data: _DataTableInitial),
                ],
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}


//_longBusinessSummary ?? ""