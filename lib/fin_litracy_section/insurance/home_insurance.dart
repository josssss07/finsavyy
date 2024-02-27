import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeInsurance extends StatefulWidget {
  const HomeInsurance({super.key});

  @override
  State<HomeInsurance> createState() => _AutoInsuranceState();
}

class _AutoInsuranceState extends State<HomeInsurance> {
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
          'Home Insurance',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Image(image: AssetImage('assets/images/homeins.jpeg')),
              const SizedBox(
                height: 15,
              ),
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(26),
                  child: Text(
                    'Home insurance is like a financial shield for your home and the stuff you own inside it. If something unexpected happens, like a fire, storm damage, or theft, your insurance company will help you pay for repairs or replacements. Home insurance isnt just for major catastrophes. It can also help pay for things like injuries that happen on your property or even temporary housing costs if your home is temporarily uninhabitable due to a covered event. ',
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
                    'Unexpected accidents and damage can be incredibly costly. Home insurance helps prevent you from facing a huge financial burden all by yourself. This means you can rest easier knowing youve got protection in case of those "what if" moments. If you have a mortgage on your house, your lender will likely require you to have home insurance.  This protects their investment in your property.  Even without a mortgage, its a wise financial move to safeguard one of your most valuable assets.',
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
                                  "https://en.wikipedia.org/wiki/Home_insurance");
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
