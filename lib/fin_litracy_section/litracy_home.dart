
import 'package:flutter/material.dart';
import 'package:managment/fin_litracy_section/risk_managment_pages/risk.dart';
import 'package:managment/fin_litracy_section/wealth_managment_pages/wealth.dart';

class LitracyPage extends StatelessWidget {
  const LitracyPage({super.key});

  void wealthPages(context){
    Navigator.push(context,
      MaterialPageRoute(builder: (context) => const Wealth()   
      )
    );
  }
  void riskPages(context){
    Navigator.push(context, MaterialPageRoute(builder: (_)=> Risk()));
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
                    'Wealth Managment',
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
                    'Risk Managment',
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
          // Padding(
          //   padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceAround,
          //     children: [
          //       Container(
          //         height: 66,
          //         width: MediaQuery.of(context).size.width/3.1,
          //         decoration: BoxDecoration(
          //           color: Colors.red
          //         ),
          //         child: Text('test')
          //       ),
          //       Container(
          //         height: 66,
          //         width: MediaQuery.of(context).size.width/3.1,
          //         decoration: BoxDecoration(
          //           color: Colors.red
          //         ),
          //         child: Text('test')
          //       ),
          //     ],
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.fromLTRB(5, 6, 5, 2),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceAround,
          //     children: [
          //       Container(
          //         height: 66,
          //         width: MediaQuery.of(context).size.width/3.1,
          //         decoration: BoxDecoration(
          //           color: Colors.red
          //         ),
          //         child: Text('test')
          //       ),
          //       Container(
          //         height: 66,
          //         width: MediaQuery.of(context).size.width/3.1,
          //         decoration: BoxDecoration(
          //           color: Colors.red
          //         ),
          //         child: Text('test')
          //       ),
          //     ],
          //   ),
          // )
  }
}