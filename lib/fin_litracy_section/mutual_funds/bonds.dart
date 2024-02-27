import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Bonds extends StatefulWidget {
  const Bonds({super.key});

  @override
  State<Bonds> createState() => _AutoInsuranceState();
}

class _AutoInsuranceState extends State<Bonds> {
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
          'Bonds',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Image(image: AssetImage('assets/images/bonds3.gif')),
              const SizedBox(
                height: 15,
              ),
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(26),
                  child: Text(
                    'Bonds are basically loans. Think of a bond as an IOU. When you buy a bond, youre essentially lending money to a company or government.  They promise to pay you back the amount you lent (the principal) on a specific date (the maturity date), plus regular interest paymentsCompanies and governments issue bonds to raise money for various projects. For example, a company might issue bonds to expand operations, and a government might issue bonds to build roads or schools.',
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
                    'Bonds are considered a fixed-income investment because they typically provide a predictable stream of interest payments. This makes them attractive to investors seeking regular income, especially those nearing retirement.While bonds are generally less risky than stocks, theyre not risk-free. If the company or government that issued the bond faces financial trouble,  you might not get all your money back. Additionally, bond prices can fluctuate with changes in interest rates, affecting their value.',
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
                                  "https://en.wikipedia.org/wiki/Bond_(finance)");
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
