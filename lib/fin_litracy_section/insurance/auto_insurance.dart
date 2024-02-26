import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AutoInsurence extends StatelessWidget {
  const AutoInsurence({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 85, 145, 141),
        title: Text(
          'Auto Insurance',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(26),
              child: Text(
                'Vehicle insurance (also known as car insurance, motor insurance, or auto insurance) is insurance for cars, trucks, motorcycles, and other road vehicles. Its primary use is to provide financial protection against physical damage or bodily injury resulting from traffic collisions and against liability that could also arise from incidents in a vehicle. Vehicle insurance may additionally offer financial protection against theft of the vehicle, and against damage to the vehicle sustained from events other than traffic collisions, such as keying, weather or natural disasters, and damage sustained by colliding with stationary objects. The specific terms of vehicle insurance vary with legal regulations in each region.',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
            TextButton(onPressed: ()async{
                const url = 'https://www.investopedia.com/terms/a/auto-insurance.asp';
                if(await canLaunchUrl(url as Uri)){
                  await launchUrl(url as Uri);
                }else{
                  throw 'Could not launch site';
                }
              },
              child: Text('Click here to learn more')),
          ],
        ),
      ),
    );
  }
}
