import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LifeInsurance extends StatefulWidget {
  const LifeInsurance({super.key});

  @override
  State<LifeInsurance> createState() => _AutoInsuranceState();
}

class _AutoInsuranceState extends State<LifeInsurance> {
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
          'Life Insurance',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Image(image: AssetImage('assets/images/lifeins2.jpg')),
              const SizedBox(
                height: 15,
              ),
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(26),
                  child: Text(
                    'Life insurance is essentially a contract between you and an insurance company. You pay regular amounts (called premiums), and in return, the insurance company promises to pay a sum of money (the death benefit) to the people you choose (your beneficiaries) after you die. If you pass away unexpectedly, life insurance can help your family cope financially. It can be used to replace your income, cover debts or mortgage payments, pay for your kids education, or handle final expenses like funeral costs.',
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
                    'There are various types of life insurance.  Term life insurance covers you for a specific period, like 20 years. Whole life insurance lasts your entire lifetime.  The type and amount of coverage you choose depend on your individual situation and the financial protection you want to provide. Life insurance is about having a plan in place. Its knowing that even if you are no longer around, youve helped ease the financial burden on the people you care about most.',
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
                                  "https://en.wikipedia.org/wiki/Life_insurance");
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
