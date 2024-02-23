import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stocks extends StatelessWidget {
  const Stocks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 85, 145, 141),
        title: Text(
          'Stocks',
          style: TextStyle(
            color: Colors.white
          ),
        ),

      ),
    );
  }
}