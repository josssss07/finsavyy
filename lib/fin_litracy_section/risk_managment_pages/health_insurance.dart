import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HealthInsurence extends StatelessWidget {
  const HealthInsurence({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 85, 145, 141),
        title: Text(
          'Health Insurance',
          style: TextStyle(
            color: Colors.white
          ),
        ),

      ),
    );
  }
}