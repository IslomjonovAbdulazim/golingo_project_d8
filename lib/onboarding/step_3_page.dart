import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:golingo_project_d8/onboarding/step_4_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pushable_button/pushable_button.dart';

class Step3Page extends StatefulWidget {
  const Step3Page({super.key});

  @override
  State<Step3Page> createState() => _Step3PageState();
}

class _Step3PageState extends State<Step3Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              Spacer(),
              PushableButton(
                onPressed: () {
                  Get.to(Step4Page());
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
