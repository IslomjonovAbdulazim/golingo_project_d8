import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:golingo_project_d8/auth/forgot_1_page.dart';
import 'package:golingo_project_d8/main/bnb_page.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              // Welcome Back! 👋
              // Pick up right where you left off and keep progressing towards fluency.

              // Email
              // Password

              // Forgot Password
              Row(
                children: [
                  Checkbox(
                    value: checked,
                    onChanged: (value) {
                      checked = value!;
                      setState(() {});
                    },
                  ),
                  Text(
                    "Remember me",
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      color: Color(0xff212121),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Get.to(Forgot1Page());
                    },
                    child: Text(
                      "Forgot Password?",
                      style: GoogleFonts.nunito(
                        fontSize: 18,
                        color: Color(0xff068FFF),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(child: Divider()),
                  SizedBox(width: 12),
                  Text(
                    "or continue with",
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      color: Color(0xff616161),
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(child: Divider()),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Get.offAll(BnbPage());
                      },
                      child: Container(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffEEEEEE)),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          FontAwesomeIcons.google,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
