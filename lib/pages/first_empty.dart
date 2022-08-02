import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstEmpty extends StatelessWidget {
  const FirstEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 60, right: 60),
              child: Image.asset('assets/illustration_light.png'),
            ),
            const SizedBox(height: 100),
            Text(
              'Success Order',
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: const Color(0xff0E1954),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'We will delivery your package\nas soon as possible',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: const Color(0xff0E1954),
              ),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(200, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17),
                ),
                primary: const Color(0xffF94593),
              ),
              child: Text(
                'Done',
                style: GoogleFonts.openSans(fontSize: 18),
              ),
              onPressed: () => {},
            )
          ],
        ),
      ),
    );
  }
}
