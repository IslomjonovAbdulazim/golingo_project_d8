import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:golingo_project_d8/auth/register_2_page.dart';
import 'package:golingo_project_d8/auth/register_3_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pushable_button/pushable_button.dart';

class Register1Page extends StatefulWidget {
  const Register1Page({super.key});

  @override
  State<Register1Page> createState() => _Register1PageState();
}

class _Register1PageState extends State<Register1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "First, what should we call you?",
                style: GoogleFonts.nunito(
                  color: Color(0xff212121),
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 32),
              Text(
                "Your name",
                style: GoogleFonts.nunito(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff212121),
                ),
              ),
              SizedBox(height: 12),
              TextField(
                cursorColor: Color(0xff068FFF),
                style: GoogleFonts.nunito(
                  color: Color(0xff212121),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
                decoration: InputDecoration(
                  hintText: "Name",
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff068FFF)),
                  ),
                ),
              ),
              Spacer(),
              PushableButton(
                onPressed: () {
                  Get.to(Register3Page());
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
        ),
      ),
    );
  }
}
