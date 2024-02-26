
import 'package:flutter/material.dart';
import 'package:managment/fin_litracy_section/equity/equity.dart';
import 'package:managment/fin_litracy_section/insurance/insurance_page_router.dart';
import 'package:managment/fin_litracy_section/mutual_funds/mutual_funds.dart';
import 'package:managment/fin_litracy_section/mutual_funds/mutual_funds_nav_page.dart';
import 'package:managment/fin_litracy_section/risk_managment_pages/risk.dart';
import 'package:managment/fin_litracy_section/wealth_managment_pages/wealth.dart';

class LitracyPage extends StatelessWidget {
  const LitracyPage({super.key});

  void wealthPages(context){
    Navigator.push(context,
      MaterialPageRoute(builder: (context) => const InsurancePageRoutes()   
      )
    );
  }
  void riskPages(context){
    Navigator.push(context, MaterialPageRoute(builder: (_)=> MutualFundsRouter()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Future Proof Yourself, Start Today'),
        centerTitle: true,
      ),
      body: Column(
        children:<Widget> [
      
          GestureDetector(
            onTap: (){wealthPages(context);},
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: Container(
                height: 180,
                width:3580,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 85, 145, 141),
                  borderRadius: BorderRadius.circular(18)
                ),
                child: Center(
                  child: Text(
                    'Insurance',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white
                    )
                  ),
                )
              ),
            ),
          ),

          GestureDetector(
            onTap: (){riskPages(context);},
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: Container(
                height: 180,
                width:3580,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 85, 145, 141),
                  borderRadius: BorderRadius.circular(18)
                ),
                child: Center(
                  child: Text(
                    'Mutual Funds',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    )
                  ),
                )
              ),
            ),
          ),

          GestureDetector(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: ((context) => Equity())));
            },
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: Container(
                height: 180,
                width:3580,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 85, 145, 141),
                  borderRadius: BorderRadius.circular(18)
                ),
                child: Center(
                  child: Text(
                    'Equity Investments',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    )
                  ),
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}