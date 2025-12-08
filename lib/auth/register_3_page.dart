import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:golingo_project_d8/auth/register_1_page.dart';
import 'package:golingo_project_d8/auth/register_4_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pushable_button/pushable_button.dart';

class Register3Page extends StatefulWidget {
  const Register3Page({super.key});

  @override
  State<Register3Page> createState() => _Register3PageState();
}

class _Register3PageState extends State<Register3Page> {
  bool pass1 = true;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: !isLoading,
        bottom: !isLoading,
        child: Padding(
          padding: EdgeInsets.all(isLoading ? 0 : 16),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(Icons.arrow_back, size: 32),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Create a password to keep your account safe and secure.",
                    style: GoogleFonts.nunito(
                      color: Color(0xff212121),
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      height: 1.2,
                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                    "Password",
                    style: GoogleFonts.nunito(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff212121),
                    ),
                  ),
                  TextField(
                    cursorColor: Color(0xff068FFF),
                    style: GoogleFonts.nunito(
                      color: Color(0xff212121),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                    obscureText: pass1,
                    decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          pass1 = !pass1;
                          setState(() {});
                        },
                        child: Icon(
                          pass1
                              ? Icons.remove_red_eye
                              : CupertinoIcons.eye_slash,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff068FFF)),
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                    "Confirm Password",
                    style: GoogleFonts.nunito(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff212121),
                    ),
                  ),
                  TextField(
                    cursorColor: Color(0xff068FFF),
                    style: GoogleFonts.nunito(
                      color: Color(0xff212121),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                    decoration: InputDecoration(
                      hintText: "Confirm Password",
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff068FFF)),
                      ),
                    ),
                  ),
                  Spacer(),
                  PushableButton(
                    onPressed: () async {
                      isLoading = true;
                      setState(() {});
                      await Future.delayed(Duration(seconds: 2));
                      isLoading = false;
                      setState(() {});
                      Get.to(Register4Page());
                    },
                    hslColor: HSLColor.fromColor(Color(0xff068FFF)),
                    height: 56,
                    elevation: 5,
                    child: Text(
                      "Continue",
                      style: GoogleFonts.nunito(
                        color: Color(0xffFFFFFF),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              if (isLoading)
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    color: Colors.black.withOpacity(.3),
                    child: Center(
                      child: Container(
                        height: 200,
                        width: 340,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircularProgressIndicator(),
                            SizedBox(height: 24),
                            Text("Creating an account..."),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
