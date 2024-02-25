import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IndexFunds extends StatelessWidget {
  const IndexFunds({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 85, 145, 141),
        title: Text(
          'Index Funds',
          style: TextStyle(
            color: Colors.white
          ),
        ),

      ),
    );
  }
}