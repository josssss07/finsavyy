import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Equity extends StatelessWidget {
  const Equity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 85, 145, 141),
        title: Text(
          'Equity',
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
                  'An equity co-investment is a minority investment in a company made by investors alongside a private equity fund manager or venture capital (VC) firm. Equity co-investment enables other investors to participate in potentially highly profitable investments without paying the usual high fees charged by a private equity fund.\n\nEquity co-investment opportunities are typically restricted to large institutional investors who already have an existing relationship with the private equity fund manager and are often not available to smaller or retail investors.\n\nAccording to a study by Preqin, 80% of LPs reported better performance from equity co-investments compared to traditional fund structures. In a typical co-investment fund, the investor pays a fund sponsor or general partner (GP) with whom the investor has a well-defined private equity partnership. The partnership agreement outlines how the GP allocates capital and diversifies assets. Co-investments avoid typical limited partnership (LP) and general (GP) funds by investing directly in a company. KEY TAKEAWAYS\n\n-Equity co-investments are relatively smaller investments made in a company concurrent with larger investments by a private equity or VC fund.\n\n-Co-investors are typically charged a reduced fee, or no fee, for the investment and receive ownership privileges equal to the percentage of their investment.\n\n-They offer benefits to the larger funds in the form of increased capital and reduced risk while investors benefit by diversifying their portfolio and establishing relationships with senior private equity professionals',
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