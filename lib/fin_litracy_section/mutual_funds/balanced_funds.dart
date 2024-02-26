import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BalancedFunds extends StatelessWidget {
  const BalancedFunds({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 85, 145, 141),
        title: Text(
          'Balanced Funds',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(26),
                child: Text(
                  'A balanced fund is a mutual fund that typically contains a component of stocks and bonds. A mutual fund is a basket of securities in which investors can purchase. Typically, balanced funds stick to a fixed asset allocation of stocks and bonds, such as 70% stocks and 30% bonds. Bonds are debt instruments  that usually pay a stable, fixed rate of return.\n\nThe investment objective for a balanced mutual fund tends  to be a mixture of growth and income, which leads to the balanced nature toward investors who are looking for a mixture of safety, income, and modest capital appreciation.\n\nA balanced fund is a type of hybrid fund, which is an investment fund characterized by its diversification among two or more asset classes. The amounts the fund invests into each asset class usually must remain within a set minimum and maximum value. Another name for a balanced fund is an asset allocation fund.\n\nBalanced fund portfolios do not materially change their asset mix, unlike life-cycle funds, which adjust the holdings to lower the risk as an investor\'s retirement date approaches. Balanced funds also differ from actively managed funds, which may evolve in response to the investor\'s changing risk-return appetite or overall investment market conditions.\n\nRetirees or investors with low-risk tolerance can utilize balanced funds for healthy growth and supplemental income. The elements of balanced funds include a mixture of stocks and bonds.\n\nThe equity holdings of a balanced fund lean toward large equities such as the ones found in the S&P 500 Index, which contains 500 of the largest publicly traded companies in the United States. Balanced funds may also include dividend-paying companies. Dividends are cash payments made by companies to their shareholders as a reward for owning their stock. Companies that consistently pay dividends over the long term tend to be well-established and profitable',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),
               TextButton(onPressed: ()async{
                const url = 'https://www.investopedia.com/terms/b/balancedfund.asp#:~:text=A%20balanced%20fund%20is%20a,%25%20stocks%20and%2030%25%20bonds.';
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
      ),
    );
  }
}
