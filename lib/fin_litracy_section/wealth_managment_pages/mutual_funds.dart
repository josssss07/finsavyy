import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MutualFunds extends StatelessWidget {
  const MutualFunds({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 85, 145, 141),
        title: Text(
          'Mutual Funds',
          style: TextStyle(
            color: Colors.white
          ),
        ),

      ),
    );
  }
}