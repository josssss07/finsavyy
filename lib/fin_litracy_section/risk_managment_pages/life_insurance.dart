import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LifeInsurence extends StatelessWidget {
  const LifeInsurence({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 85, 145, 141),
        title: Text(
          'Life Insurance',
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
                  'Life insurance is a contractual agreement between a life insurance company and a policy owner, wherein the insurer guarantees to pay a sum of money to named beneficiaries upon the death of the insured person, in exchange for premiums paid by the policyholder during their lifetime.\n\nVarious types of life insurance cater to different needs and preferences. A crucial decision is whether to opt for temporary or permanent life insurance, depending on the insured person\'s short- or long-term needs.\n\n- Term life insurance provides coverage for a specific number of years, typically 10, 20, or 30 years. It offers a balance between affordability and long-term financial security. Renewal options are available after the term ends, but premiums may increase yearly based on the insured\'s current age. Some policies allow conversion to permanent coverage, providing a more stable solution.\n\n- Whole life insurance is a type of permanent life insurance that lasts the lifetime of the insured. It accumulates cash value over time, which can be utilized for various purposes such as loans, cash withdrawals, or premium payments.\n\nBoth types of insurance offer distinct advantages and considerations, and the choice between them depends on individual circumstances and financial goals.',
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