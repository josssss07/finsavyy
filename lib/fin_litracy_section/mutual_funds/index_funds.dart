import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class IndexFunds extends StatefulWidget {
  const IndexFunds({super.key});

  @override
  State<IndexFunds> createState() => _AutoInsuranceState();
}

class _AutoInsuranceState extends State<IndexFunds> {
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
          'Index Funds',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Image(image: AssetImage('assets/images/INDEX3.jpeg')),
              const SizedBox(
                height: 15,
              ),
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(26),
                  child: Text(
                    'An index fund is like a pre-made basket of stocks or bonds designed to mirror a specific market index, like the S&P 500.  If you buy an S&P 500 index fund, youre essentially buying a tiny piece of the 500 largest companies in the US.Index funds follow a "passive" strategy. This means they simply track the performance of their chosen index rather than having a fund manager actively picking and choosing individual stocks',
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
                    'Index funds are known for their low fees, broad diversification (you get instant exposure to many companies), and potential for long-term growth that matches the overall market. These traits make them popular for hands-off investors.Index funds arent about trying to outperform the market, theyre about matching it. This means youll likely get average market returns, but over time, the market has historically trended upwards.',
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
                                  "https://en.wikipedia.org/wiki/Index_fund");
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
