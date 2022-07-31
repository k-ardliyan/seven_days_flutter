import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstSignIn extends StatelessWidget {
  const FirstSignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181A20),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'logo.png',
                width: 50,
              ),
              const SizedBox(height: 70),
              Text(
                'Welcome back.\nLet\'s make money.',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 70),
              // Input Form
              TextFormField(
                style: GoogleFonts.openSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: const Color(0xff262A34),
                  filled: true,
                  hintText: 'Email',
                  hintStyle: GoogleFonts.openSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff6F7075),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                obscureText: true,
                style: GoogleFonts.openSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: const Color(0xff262A34),
                  filled: true,
                  hintText: 'Password',
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xff6F7075),
                  ),
                  // suffixIcon: Icon(
                  //   Icons.visibility_outlined,
                  //   color: Color(0xff6F7075),
                  // ),
                ),
              ),
              const SizedBox(height: 6),
              Container(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot My Password',
                  style: GoogleFonts.poppins(
                    color: const Color(0xff6A6B70),
                  ),
                ),
              ),
              const SizedBox(height: 117),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(55),
                  primary: const Color(0xffFCAC15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                ),
                child: Text(
                  'Sign In',
                  style: GoogleFonts.openSans(
                    color: const Color(0xff6B4909),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onPressed: () => {},
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    'Sign Up',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
