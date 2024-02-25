import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeInsurence extends StatelessWidget {
  const HomeInsurence({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 85, 145, 141),
        title: Text(
          'Home Insurance',
          style: TextStyle(
            color: Colors.white
          ),
        ),

      ),
    );
  }
}