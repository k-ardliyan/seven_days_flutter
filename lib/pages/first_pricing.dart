import 'package:flutter/material.dart';
import 'package:seven_days_flutter/widgets/theme.dart';

class FirstPricing extends StatefulWidget {
  const FirstPricing({Key? key}) : super(key: key);

  @override
  State<FirstPricing> createState() => _FirstPricingState();
}

class _FirstPricingState extends State<FirstPricing> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
        children: [
          Center(child: Image.asset('assets/pricing_light.png', width: 100)),
          const SizedBox(height: 48),
          Text(
            'Which one you wish\n to Upgrade?',
            textAlign: TextAlign.center,
            style: pricingLightHeadingText,
          ),
        ],
      );
    }

    Widget option(int index, image, title, subtitle, subtitle2) {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          shadowColor: Colors.white,
          minimumSize: const Size.fromHeight(100),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
            side: BorderSide(
              color: selectedIndex == index
                  ? const Color(0xff6050E7)
                  : const Color(0xffD9DEEA),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  image,
                  width: 60,
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: pricingLightHeadingText2,
                    ),
                    Text.rich(
                      TextSpan(
                        text: subtitle + ' ',
                        style: pricingLightDescText,
                        children: [
                          TextSpan(
                            text: subtitle2,
                            style: pricingLightDescText2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: selectedIndex == index
                  ? Image.asset('assets/pricing_light_check.png', width: 24)
                  : const Text(''),
            ),
          ],
        ),
        onPressed: () => {
          setState(() {
            selectedIndex = index;
          })
        },
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            header(),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  option(0, 'assets/pricing_light2.png', 'Money Security',
                      'support', '24/7'),
                  const SizedBox(height: 24),
                  option(1, 'assets/pricing_light3.png', 'Automation',
                      'we provide', 'Invoice'),
                  const SizedBox(height: 24),
                  option(2, 'assets/pricing_light4.png', 'Balance Report',
                      'can up to', '10k'),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Material(
        color: const Color(0xff6050E7),
        child: InkWell(
          onTap: () => {},
          child: SizedBox(
            height: 70,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Update Now', style: pricingLightSubmitText),
                  const Icon(Icons.arrow_circle_right_outlined,
                      color: Colors.white, size: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
