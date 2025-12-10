import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:golingo_project_d8/auth/sign_in_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pushable_button/pushable_button.dart';

class Register4Page extends StatefulWidget {
  const Register4Page({super.key});

  @override
  State<Register4Page> createState() => _Register4PageState();
}

class _Register4PageState extends State<Register4Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Text("Register 4"),
              PushableButton(
                onPressed: () async {
                  Get.to(SignInPage());
                },
                hslColor: HSLColor.fromColor(Color(0xff068FFF)),
                height: 56,
                elevation: 5,
                child: Text(
                  "Let's Dive in",
                  style: GoogleFonts.nunito(
                    color: Color(0xffFFFFFF),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
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
