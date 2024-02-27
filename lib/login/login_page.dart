import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:managment/login/user_data.dart/user.dart';
import 'package:managment/widgets/bottomnavigationbar.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //open hive box
  final _myBox = Hive.box('UsernameBox');

  //write to hive box(username)
  void addData(String userName) {
    _myBox.put(1, userName);
    print(_myBox.get(1));
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController();
    return Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Center(
                  child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Image(image: AssetImage('assets/images/welc.jpg')),
            const Text(
              "Empowering Financial Growth",
              style: TextStyle(
                  fontSize: 26, color: Colors.black, fontWeight: FontWeight.w900),
            ),
            const Text(
              "Bringing clarity to your financial roadmap.",
              style: TextStyle(
                  fontSize: 15, color: Colors.black, fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 10, 32, 18),
              child: TextField(
                controller: username,
                decoration: InputDecoration(
                    hintText: 'Enter your name',
                    focusColor: Color.fromARGB(255, 47, 125, 121),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(18),
                child: FloatingActionButton(
                  backgroundColor: const Color.fromARGB(255, 85, 145, 141),
                  onPressed: () {
                    if(username.text.isEmpty){
                      setState(() {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text('please enter a name')));
                      });
                    }else{
                      String user = username.text;
                      addData(user);
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (_) => Bottom()));
                    }
                  },
                  child: const Icon(
                    Icons.arrow_right,
                    color: Colors.black,
                  ),
                ))
                  ]),
                ),
          ),
        ));
  }
}
