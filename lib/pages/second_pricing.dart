import 'package:flutter/material.dart';
import 'package:seven_days_flutter/widgets/theme.dart';

class SecondPricing extends StatelessWidget {
  const SecondPricing({Key? key}) : super(key: key);
  Widget list(String text) {
    return Row(
      children: [
        Image.asset('assets/pricing_dark_list.png', width: 26),
        const SizedBox(width: 12),
        Text(text, style: pricingDarkListText),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color(0xff0B073E),
                  Color(0xff602880),
                ],
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/pricing_dark.png', width: 100),
                  const SizedBox(height: 24),
                  Text('Pro Features', style: pricingDarkHeadingText),
                  const SizedBox(height: 10),
                  Text(
                    'Unlock the winner modules\nand get more insights',
                    style: pricingDarkDescText,
                  ),
                  const SizedBox(height: 50),
                  list('Unlock Our Top Charts'),
                  const SizedBox(height: 26),
                  list('Save More than 1,000 Docs'),
                  const SizedBox(height: 26),
                  list('24/7 Customer Support'),
                  const SizedBox(height: 26),
                  list('Track Company’s Spending'),
                  const SizedBox(height: 50),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xffE57C73),
                      elevation: 40,
                      shadowColor: const Color(0xffE57C73),
                      minimumSize: const Size.fromHeight(55),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(31),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(width: 24),
                        Text(
                          'Subcribe Now',
                          style: pricingDarkBtnText,
                        ),
                        Image.asset(
                          'assets/pricing_dark_btn.png',
                          width: 40,
                        ),
                      ],
                    ),
                    onPressed: () => {},
                  ),
                  const SizedBox(height: 30),
                  Text(
                    'Contact Support',
                    style: pricingDarkBtn2Text,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
