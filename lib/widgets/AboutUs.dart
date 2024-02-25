import 'package:flutter/material.dart';

class AboutWidget extends StatelessWidget {
  final String companyName;
  final String companyDescription;

  const AboutWidget({
    Key? key,
    required this.companyName,
    required this.companyDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 14.0, right: 14.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              title: Text(
                companyName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  companyDescription,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 15),
                  softWrap: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
