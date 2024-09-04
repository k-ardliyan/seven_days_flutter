import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondSignIn extends StatelessWidget {
  const SecondSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 65 - 28),
                  child: Image.asset('assets/sign.png'),
                ),
                const SizedBox(height: 53),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Email Address',
                      style: GoogleFonts.openSans(
                        color: const Color(0xff17171A),
                      ),
                    ),
                    const SizedBox(height: 6),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(71),
                          borderSide: BorderSide.none,
                        ),
                        fillColor: const Color(0xffF3F3F3),
                        filled: true,
                        hintText: 'Email',
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Password',
                      style: GoogleFonts.openSans(
                        color: const Color(0xff17171A),
                      ),
                    ),
                    const SizedBox(height: 6),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(71),
                          borderSide: BorderSide.none,
                        ),
                        fillColor: const Color(0xffF3F3F3),
                        filled: true,
                        hintText: 'Password',
                      ),
                    ),
                    const SizedBox(height: 50),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff5468FF),
                        minimumSize: const Size.fromHeight(55),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60),
                          side: BorderSide.none,
                        ),
                      ),
                      child: Text(
                        'Log In',
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () => {},
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white, backgroundColor: Colors.white,
                        minimumSize: const Size.fromHeight(55),
                        // hide box shadows
                        elevation: 0,
                        shadowColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60),
                          side: const BorderSide(color: Color(0xffCFCFCF)),
                        ),
                      ),
                      child: Text(
                        'Create New Account',
                        style: GoogleFonts.openSans(
                          color: const Color(0xffCFCFCF),
                        ),
                      ),
                      onPressed: () => {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
