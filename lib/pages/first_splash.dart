import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstSplash extends StatelessWidget {
  const FirstSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff13131e),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/swords.png', width: 140),
            const SizedBox(height: 170),
            Text(
              'VENTURE',
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 32,
                color: Colors.white,
                letterSpacing: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}
