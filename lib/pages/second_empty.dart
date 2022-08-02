import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondEmpty extends StatelessWidget {
  const SecondEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B1B33),
      body: Column(
        children: [
          Image.asset('assets/illustration_dark.png'),
          const SizedBox(height: 68),
          Text(
            'Boost Profit!',
            style: GoogleFonts.poppins(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Our tools are helping business\nto grow much faster',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 60),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: const Color(0xff808EE0),
                shape: const CircleBorder(),
                minimumSize: const Size.fromHeight(65)),
            child: const Icon(Icons.rocket_launch_outlined, size: 32),
            onPressed: () => {},
          )
        ],
      ),
    );
  }
}
