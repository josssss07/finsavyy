import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:managment/fin_litracy_section/equity/equity.dart';
import 'package:managment/fin_litracy_section/mutual_funds/balanced_funds.dart';
import 'package:managment/fin_litracy_section/mutual_funds/bonds.dart';
import 'package:managment/fin_litracy_section/mutual_funds/index_funds.dart';
import 'package:managment/fin_litracy_section/mutual_funds/mutual_funds.dart';

class MutualFundsRouter extends StatelessWidget {
  const MutualFundsRouter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 85, 145, 141),
        title: Text(
          'Wealth Managment',
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
                  MaterialPageRoute(builder: (context) => BalancedFunds() 
                  )
                );
              },
              leading: Icon(CupertinoIcons.money_euro),
              title: Text('Balanced Funds'),
              subtitle: Text('Learn about Balanced Funds'),
            ),
            ListTile(
              onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Bonds()   
                  )
                );
              },
              leading: Icon(CupertinoIcons.bold),
              title: Text('Bonds'),
              subtitle: Text('Learn about Bonds'),
            ),
            ListTile(
              onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Equity()   
                  )
                );
              },
              leading: Icon(CupertinoIcons.arrow_up_arrow_down),
              title: Text('Equity'),
              subtitle: Text('Learn about Equity'),
            ),
            ListTile(
              onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const IndexFunds()   
                  )
                );
              },
              leading: Icon(CupertinoIcons.increase_indent),
              title: Text('Index funds'),
              subtitle: Text('Learn about index funds'),
            ),
            ListTile( 
              onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MutualFunds()   
                  )
                );
              },
              leading: Icon(CupertinoIcons.tray_full),
              title: Text('Mutual Funds'),
              subtitle: Text('Learn about Mutual funds'),
            ),
        
          ],
        ),
      ),
    );;
  }
}