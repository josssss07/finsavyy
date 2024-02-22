import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Wealth extends StatelessWidget {
  const Wealth({super.key});

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
              onTap: (){},
              leading: Icon(CupertinoIcons.money_euro),
              title: Text('Balanced Funds'),
              subtitle: Text('Learn about Balanced Funds'),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(CupertinoIcons.bold),
              title: Text('Bonds'),
              subtitle: Text('Learn about Bonds'),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(CupertinoIcons.arrow_up_arrow_down),
              title: Text('Equity'),
              subtitle: Text('Learn about Equity'),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(CupertinoIcons.increase_indent),
              title: Text('Index funds'),
              subtitle: Text('Learn about index funds'),
            ),
            ListTile( 
              onTap: (){},
              leading: Icon(CupertinoIcons.tray_full),
              title: Text('Mutual Funds'),
              subtitle: Text('Learn about Mutual funds'),
            ),
        
          ],
        ),
      ),
    );
  }
}