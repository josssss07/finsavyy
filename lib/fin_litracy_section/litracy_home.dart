import 'package:flutter/material.dart';

class LitracyPage extends StatelessWidget {
  const LitracyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FutureProof Yourself, Start Today'),
        centerTitle: true,
      ),
      body: Column(
        children:<Widget> [
      
          Container(
            height: 200,
            width:3580,
            decoration: BoxDecoration(
              color: Colors.red
            ),
            child: Text('text for test')
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 66,
                  width: MediaQuery.of(context).size.width/3.1,
                  decoration: BoxDecoration(
                    color: Colors.red
                  ),
                  child: Text('test')
                ),
                Container(
                  height: 66,
                  width: MediaQuery.of(context).size.width/3.1,
                  decoration: BoxDecoration(
                    color: Colors.red
                  ),
                  child: Text('test')
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 6, 5, 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 66,
                  width: MediaQuery.of(context).size.width/3.1,
                  decoration: BoxDecoration(
                    color: Colors.red
                  ),
                  child: Text('test')
                ),
                Container(
                  height: 66,
                  width: MediaQuery.of(context).size.width/3.1,
                  decoration: BoxDecoration(
                    color: Colors.red
                  ),
                  child: Text('test')
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}