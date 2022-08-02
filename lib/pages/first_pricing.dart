import 'package:flutter/material.dart';
import 'package:seven_days_flutter/widgets/theme.dart';

class FirstPricing extends StatefulWidget {
  @override
  _FirstPricingState createState() => _FirstPricingState();
}

class _FirstPricingState extends State<FirstPricing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset('assets/pricing_light.png', width: 100)),
            SizedBox(height: 48),
            Text(
              'Which one you wish\n to Upgrade?',
              textAlign: TextAlign.center,
              style: pricingLightHeadingText,
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      elevation: 0,
                      minimumSize: Size.fromHeight(100),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                          side: BorderSide(color: Color(0xffD9DEEA))),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/pricing_light2.png',
                          width: 60,
                        ),
                        SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Money Security',
                              style: pricingLightHeadingText2,
                            ),
                            Text.rich(
                              TextSpan(
                                text: 'support ',
                                style: pricingLightDescText,
                                children: [
                                  TextSpan(
                                    text: '24/7',
                                    style: pricingLightDescText2,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    onPressed: () => {},
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      elevation: 0,
                      minimumSize: Size.fromHeight(100),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                          side: BorderSide(color: Color(0xffD9DEEA))),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/pricing_light3.png',
                          width: 60,
                        ),
                        SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Automation',
                              style: pricingLightHeadingText2,
                            ),
                            Text.rich(
                              TextSpan(
                                text: 'we provide ',
                                style: pricingLightDescText,
                                children: [
                                  TextSpan(
                                    text: 'Invoice',
                                    style: pricingLightDescText2,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    onPressed: () => {},
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      elevation: 0,
                      minimumSize: Size.fromHeight(100),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                          side: BorderSide(color: Color(0xffD9DEEA))),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/pricing_light4.png',
                          width: 60,
                        ),
                        SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Balance Report',
                              style: pricingLightHeadingText2,
                            ),
                            Text.rich(
                              TextSpan(
                                text: 'can up to ',
                                style: pricingLightDescText,
                                children: [
                                  TextSpan(
                                    text: '10k',
                                    style: pricingLightDescText2,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    onPressed: () => {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Material(
        color: Color(0xff6050E7),
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
                  Icon(Icons.arrow_circle_right_outlined,
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
