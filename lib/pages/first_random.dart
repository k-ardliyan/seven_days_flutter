import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seven_days_flutter/widgets/theme.dart';
import 'package:seven_days_flutter/widgets/cart_list.dart';

class FirstRandom extends StatelessWidget {
  const FirstRandom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
              children: [
                Center(
                  child: Text('My Shopping Cart', style: randomOneHeadingText),
                ),
                const SizedBox(height: 26),
                CartList(
                  price: 90,
                  amount: 2,
                  foodName: 'Burger Malleta',
                  place: 'McTheone',
                  imageUrl: 'assets/random_burger.png',
                ),
                const SizedBox(height: 26),
                CartList(
                  price: 510,
                  amount: 5,
                  foodName: 'Mojito Orange',
                  place: 'The Bar',
                  imageUrl: 'assets/random_drink.png',
                ),
                const SizedBox(height: 26),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Informations', style: randomListHeadingText),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Sub Total',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: const Color(0xff191919),
                            ),
                          ),
                          Text(
                            '\$600.00',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff191919),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Delivery',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: const Color(0xff191919),
                            ),
                          ),
                          Text(
                            '\$80.00',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff191919),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: const Color(0xff191919),
                            ),
                          ),
                          Text(
                            '\$680.00',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff191919),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 26),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 10,
                    shadowColor: const Color(0xffFFC532),
                    primary: const Color(0xffFFC532),
                    minimumSize: const Size.fromHeight(60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(52),
                    ),
                  ),
                  child: Text(
                    'Checkout Now',
                    style: GoogleFonts.poppins(
                      color: const Color(0xff2E221B),
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  onPressed: () => {},
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: const Color(0xffD9D9D9),
                    minimumSize: const Size.fromHeight(60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(52),
                    ),
                  ),
                  child: Text(
                    'Save to Wishlist',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  onPressed: () => {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
