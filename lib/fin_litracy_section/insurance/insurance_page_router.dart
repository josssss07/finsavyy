import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:managment/fin_litracy_section/insurance/auto_insurance.dart';
import 'package:managment/fin_litracy_section/insurance/health_insurance.dart';
import 'package:managment/fin_litracy_section/insurance/home_insurance.dart';
import 'package:managment/fin_litracy_section/insurance/life_insurance.dart';

class InsurancePageRoutes extends StatelessWidget {
  const InsurancePageRoutes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 85, 145, 141),
        title: Text(
          'Insurance',
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
                  MaterialPageRoute(builder: (context) => AutoInsurence()
                  )
                );
              },
              leading: Icon(CupertinoIcons.car),
              title: Text('Auto Insurance '),
              subtitle: Text('Learn about Auto Insurance'),
            ),
            ListTile(
              onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const  HealthInsurence()
                  )
                );
              },
              leading: Icon(CupertinoIcons.plus),
              title: Text('Health Insurance'),
              subtitle: Text('Learn about Health Insurance'),
            ),
            ListTile(
              onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomeInsurence()   
                  )
                );
              },
              leading: Icon(CupertinoIcons.home),
              title: Text('Home Insurance'),
              subtitle: Text('Learn about home insurance'),
            ),
            ListTile(
              onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LifeInsurence()   
                  )
                );
              },
              leading: Icon(CupertinoIcons.person_2_alt),
              title: Text('Life Insurance'),
              subtitle: Text('Learn about life insurance'),
            ),
          ],
        ),
      ),
    );;
  }
}