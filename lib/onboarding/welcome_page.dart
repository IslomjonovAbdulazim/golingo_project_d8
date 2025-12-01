import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pushable_button/pushable_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Center(
            child: Column(
              children: [
                Image.asset("assets/onboarding_1.png"),
                Text(
                  "Golingo",
                  style: GoogleFonts.nunito(
                    color: Color(0xff068FFF),
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Learn languages whenever and wherever you want.",
                  style: GoogleFonts.nunito(
                    color: Color(0xff424242),
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                PushableButton(
                  hslColor: HSLColor.fromColor(Color(0xff068FFF)),
                  height: 56,
                  elevation: 5,
                  child: Text(
                    "GET STARTED",
                    style: GoogleFonts.nunito(
                      color: Color(0xffFFFFFF),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 12),
                SizedBox(
                  height: 58,
                  child: CupertinoButton(
                    onPressed: () {},
                    color: Color(0xffEBF6FF),
                    borderRadius: BorderRadius.circular(24),
                    child: Center(
                      child: Text(
                        "I ALREADY HAVE AN ACCOUNT",
                        style: GoogleFonts.nunito(
                          color: Color(0xff068FFF),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
