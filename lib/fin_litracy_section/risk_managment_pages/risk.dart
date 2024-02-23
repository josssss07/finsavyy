import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:managment/fin_litracy_section/risk_managment_pages/auto_insurance.dart';
import 'package:managment/fin_litracy_section/risk_managment_pages/health_insurance.dart';
import 'package:managment/fin_litracy_section/risk_managment_pages/home_insurance.dart';
import 'package:managment/fin_litracy_section/risk_managment_pages/life_insurance.dart';

class Risk extends StatelessWidget {
  const Risk({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 85, 145, 141),
        title: Text(
          'Risk Managment',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white
          ),
        ),
        centerTitle: true,
      ),
      body:Padding(
        padding: const EdgeInsets.all(12.8),
        child: ListView(
          children: [
            ListTile(
              onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AutoInsurence()   
                  )
                );
              },
              leading: Icon(CupertinoIcons.car_detailed),
              title: Text('Auto Insaurnce'),
              subtitle: Text('Learn about automobile insaurnce and how it beifits you'),
            ),
            ListTile(
              onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HealthInsurence()   
                  )
                );
              },
              leading: Icon(CupertinoIcons.heart_circle),
              title: Text('Health Insaurnce'),
              subtitle: Text('Learn about health insaurnce and how you can use it'),
            ),
            ListTile(
              onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomeInsurence()   
                  )
                );
              },
              leading: Icon(CupertinoIcons.home),
              title: Text('Home Insaurnce'),
              subtitle: Text('Learn about home insaurnce and how it helps you'),
            ),
            ListTile(
              onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LifeInsurence()   
                  )
                );
              },
              leading: Icon(CupertinoIcons.heart_solid),
              title: Text('Life Insaurnce'),
              subtitle: Text('Learn about life insaurance and how it can help you and your family'),
            ),
        
          ],
        ),
      ),
    );
  }
}