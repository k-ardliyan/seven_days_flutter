import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondSplash extends StatelessWidget {
  const SecondSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 70),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/home.png',
                width: 52,
              ),
              const SizedBox(width: 14),
              Text(
                'HouseQu',
                style: GoogleFonts.montserrat(
                    fontSize: 33,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              )
            ],
          ),
        )
      ],
    ));
  }
}
