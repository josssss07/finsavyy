import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MutualFunds extends StatelessWidget {
  const MutualFunds({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 85, 145, 141),
        title: Text(
          'Mutual Funds',
          style: TextStyle(
            color: Colors.white
          ),
        ),

      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(26),
                child: Text(
                  'Mutual funds pool money from multiple investors to invest in diverse portfolios of stocks, bonds, or securities, managed by professionals.\n For students, mutual funds offer a low-entry point, professional management, and easy diversification, enabling them to invest with limited funds. \nThe hands-off approach, automatic investment plans, and liquidity make mutual funds accessible and suitable for students seeking goal-specific, disciplined investing.\n It serves as an educational tool, introducing students to financial markets and risk management, fostering a practical understanding of investment strategies and wealth accumulation. \nStudents should research, align funds with goals, and utilize online platforms for ease of accessibility and monitoring.',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}