import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bonds extends StatelessWidget {
  const Bonds({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 85, 145, 141),
        title: Text(
          'Bonds',
          style: TextStyle(
            color: Colors.white
          ),
        ),

      ),
    );
  }
}