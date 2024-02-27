import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BlancedFunds extends StatefulWidget {
  const BlancedFunds({super.key});

  @override
  State<BlancedFunds> createState() => _AutoInsuranceState();
}

class _AutoInsuranceState extends State<BlancedFunds> {
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can not launch url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 85, 145, 141),
        title: const Text(
          'Balanced Funds',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Image(image: AssetImage('assets/images/balanced-fund.png')),
              const SizedBox(
                height: 15,
              ),
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(26),
                  child: Text(
                    'A balanced fund is a type of mutual fund or ETF that invests in a combination of stocks (for growth potential) and bonds (for stability and income). They aim to provide a mix of potential growth and regular income payments. Balanced funds sit in the middle of the risk spectrum. They are less risky than pure stock funds, as the bonds help cushion potential losses during stock market downturns. But, they offer a chance for greater returns over time compared to pure bond funds.',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(26.0),
                  child: Text(
                    'Balanced funds are often a good choice for people with a moderate risk tolerance. This means youre okay with some ups and downs in the market, but you still want the potential for long-term growth alongside some predictable income.Balanced funds are appealing for their convenience. They offer built-in diversification within a single investment, saving you the work of choosing and managing individual stocks and bonds.',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 85, 145, 141),
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => Container(
                      height: 200,
                      width: 600,
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 85, 145, 141),
                              foregroundColor: Colors.white,
                            ),
                            onPressed: () async {
                              _launchURL(
                                  "https://www.investopedia.com/terms/b/balancedfund.asp");
                            },
                            child: const Text(
                              'Open URL',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text(
                              'Close Bottom Sheet',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                child: const Text(
                  'Show Complete Info',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
