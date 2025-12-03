import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:golingo_project_d8/onboarding/step_10_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pushable_button/pushable_button.dart';
class Step9Page extends StatefulWidget {
  const Step9Page({super.key});

  @override
  State<Step9Page> createState() => _Step9PageState();
}

class _Step9PageState extends State<Step9Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              PushableButton(
                onPressed: () {
                  Get.to(Step10Page());
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
