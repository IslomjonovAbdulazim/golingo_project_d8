import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:golingo_project_d8/auth/register_1_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pushable_button/pushable_button.dart';

class Step20Page extends StatefulWidget {
  const Step20Page({super.key});

  @override
  State<Step20Page> createState() => _Step20PageState();
}

class _Step20PageState extends State<Step20Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              PushableButton(
                onPressed: () {
                  Get.to(Register1Page());
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


