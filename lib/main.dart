// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:managment/Screens/home.dart';
import 'package:managment/Screens/statistics.dart';
import 'package:managment/Screens/stockList.dart';
import 'package:managment/login/login_page.dart';
import 'package:managment/route.dart';
import 'package:managment/widgets/bottomnavigationbar.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'data/model/add_date.dart';
import 'fin_litracy_section/litracy_home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  //hive innit
  await Hive.initFlutter();
  //hive boxes innit
  await Hive.openBox('appOpned');
  await Hive.openBox('UsernameBox');
  Hive.registerAdapter(AdddataAdapter());
  await Hive.openBox<Add_data>('data');
  int appLaunchedNumber = 0;
  PageMover move = PageMover();
  move.addBox(appLaunchedNumber);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: PageMover(),
      home: LoginPage(),
      //home: Bottom(),
    );
  }
}
