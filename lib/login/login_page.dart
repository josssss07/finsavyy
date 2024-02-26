import 'package:flutter/material.dart';
import 'package:managment/login/user_data.dart/user.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  void setUserName(String username){
    //UserData.username = username;
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController();
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome to Finspire",
                style: TextStyle(
                  fontSize: 28,
                  color: Color.fromARGB(255, 47, 125, 121)
                ), 
              ),
              SizedBox(height: 60,),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 10, 32, 18),
                child: TextField(
                  controller: username,
                  decoration: InputDecoration(
                    hintText: 'Enter your name',
                    focusColor: Color.fromARGB(255, 47, 125, 121),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    )
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(18),
                child: ElevatedButton(
                  onPressed:(){
                    String user = username.text;
                    //storeUserData(String user);
                  } ,
                  child: Text('Begin Your Journey to Financial Freedom Now!')
                ), 
              )
            ],
          ),
        )
    );
  }
}