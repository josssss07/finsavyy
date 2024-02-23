import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Equity extends StatelessWidget {
  const Equity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 85, 145, 141),
        title: Text(
          'Equity',
          style: TextStyle(
            color: Colors.white
          ),
        ),

      ),
    );
  }
}