import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AutoInsurence extends StatelessWidget {
  const AutoInsurence({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 85, 145, 141),
        title: Text(
          'Auto Insurance',
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}