import 'package:flutter/material.dart';

class StockCard extends StatelessWidget {
  final String stockName;
  final String stockSymbol;
  final String stockPrice;

  const StockCard({
    Key? key,
    required this.stockName,
    required this.stockSymbol,
    required this.stockPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Card(
          margin: const EdgeInsets.only(left: 40.0, right: 40.0, bottom: 20.0),
          color: const Color(0xFFE5EDEA),
          child: ListTile(
            leading: CircleAvatar(
              radius: 40,
              backgroundColor: const Color(0xFFafc8c1),
              child: Text(
                stockSymbol,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 6),
              ),
            ),
            title: Text(
              stockName,
              style: const TextStyle(color: Colors.black),
            ),
            subtitle: const Text(
              "NSE",
              style: TextStyle(color: Colors.black),
            ),
            trailing: Text(
              stockPrice,
              style: const TextStyle(color: Colors.black, fontSize: 13),
            ),
          ),
        ),
      ),
    );
  }
}
