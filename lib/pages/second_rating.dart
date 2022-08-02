import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seven_days_flutter/widgets/theme.dart';

class SecondRating extends StatelessWidget {
  const SecondRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset('assets/rating_light.png', width: 294),
                ),
                const SizedBox(height: 50),
                Text(
                  'Enjoy Your Meal',
                  style: ratingLightHeadingText,
                ),
                const SizedBox(height: 6),
                Text(
                  'Please rate our experience',
                  style: ratingLightDescText,
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      iconSize: 40,
                      color: const Color(0xffFFC648),
                      icon: const Icon(Icons.star),
                      onPressed: () {},
                    ),
                    IconButton(
                      iconSize: 40,
                      color: const Color(0xffFFC648),
                      icon: const Icon(Icons.star),
                      onPressed: () {},
                    ),
                    IconButton(
                      iconSize: 40,
                      color: const Color(0xffFFC648),
                      icon: const Icon(
                        Icons.star,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      iconSize: 40,
                      icon: const Icon(Icons.star),
                      onPressed: () {},
                    ),
                    IconButton(
                      iconSize: 40,
                      icon: const Icon(Icons.star),
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                TextFormField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText: 'Tell us about your experience',
                    fillColor: Colors.amberAccent.withOpacity(0.3),
                    filled: true,
                    contentPadding: const EdgeInsets.all(16.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(17),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(55),
                    primary: const Color(0xff4074E6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                  ),
                  child: Text(
                    'Submit Review',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () => {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
