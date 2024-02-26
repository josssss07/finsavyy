import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeInsurence extends StatelessWidget {
  const HomeInsurence({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 85, 145, 141),
        title: Text(
          'Home Insurance',
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
                  'Homeowners insurance is a form of property insurance that covers losses and damages to an individual\'s residence, along with furnishings and other assets in the home. Homeowners insurance also provides liability coverage against accidents in the home or on the property.\n\nA homeowners insurance policy usually covers four kinds of incidents on the insured property: interior damage, exterior damage, loss or damage of personal assets/belongings, and injury that occurs while on the property. When a claim is made on any of these incidents, the homeowner will be required to pay a deductible, which, in effect, is the out-of-pocket costs for the insured.\n\nThe insurance provider will usually depreciate the value of the covered property based on its age, use, condition, and useful life. The insurer deducts the depreciation value from the replacement cost to arrive at the actual cash value (ACV) that they will return to the insured. You can get a recoverable depreciation clause added to your contract that will pay you the depreciation value along with the replacement cost.\n\nFor example, say a claim is made to an insurer for interior water damage that has occurred in a home. The cost to bring the property back to livable conditions is estimated by a claims adjuster to be \$10,000. If the claim is approved, the homeowner is informed of the amount of their deductible, say \$4,000, according to the policy agreement entered into. The insurance company will issue a payment of the excess cost, in this case, \$6,000. The higher the deductible on an insurance contract, the lower the monthly or annual premium on a homeowners insurance policy.',
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