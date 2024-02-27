// ignore_for_file: must_be_immutable, unused_field

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:managment/login/login_page.dart';
import 'package:managment/widgets/bottomnavigationbar.dart';

class PageMover extends StatelessWidget {
  PageMover({super.key});
  final launchBox = Hive.box('appOpned');
  void addBox(int value){
    launchBox.put(1, value);
  }
  @override
  Widget build(BuildContext context) {
    return Container(child: () {
      int value = launchBox.get(1);
      if(value == 0){
        Navigator.pushReplacement(context,MaterialPageRoute(builder:((context) => LoginPage())));
        value++;
        launchBox.put(1, value);
      }else{
        Navigator.pushReplacement(context,MaterialPageRoute(builder: ((context) => Bottom())));
      }    
  }());
  }
}


// if(appLaunchedNumber == 0){
//           Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => LoginPage())));
//           appLaunchedNumber++;

//         }else{
//           Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => Bottom())));
//         }