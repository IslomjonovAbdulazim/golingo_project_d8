import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:golingo_project_d8/onboarding/step_18_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pushable_button/pushable_button.dart';
import 'package:wheel_picker/wheel_picker.dart';

class Step17Page extends StatefulWidget {
  const Step17Page({super.key});

  @override
  State<Step17Page> createState() => _Step17PageState();
}

class _Step17PageState extends State<Step17Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        title: Expanded(
          child: SizedBox(
            height: 12,
            child: LinearProgressIndicator(
              borderRadius: BorderRadius.circular(16),
              value: 0.083 * 11,
              backgroundColor: Color(0xffEEEEEE),
              color: Color(0xff068FFF),
            ),
          ),
        ),
        actions: [
          Text(
            "11/12",
            style: GoogleFonts.nunito(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xff212121),
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              Image.asset("assets/step_17.png"),
              SizedBox(
                height: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 145,
                      child: WheelPicker(
                        itemCount: 24,
                        looping: false,
                        selectedIndexColor: Color(0xff068FFF),
                        initialIndex: 12,
                        builder: (context, index) => Text(
                          "$index".padLeft(2, "0"),
                          style: GoogleFonts.nunito(
                            fontSize: 48,
                            height: 1,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        style: WheelPickerStyle(
                          itemExtent: 48,
                        ),
                      ),
                    ),
                    Text(
                      ":",
                      style: GoogleFonts.nunito(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff068FFF),
                      ),
                    ),
                    SizedBox(
                      width: 145,
                      child: WheelPicker(
                        itemCount: 60,
                        looping: false,
                        selectedIndexColor: Color(0xff068FFF),
                        initialIndex: 30,
                        builder: (context, index) => Text(
                          "$index".padLeft(2, "0"),
                          style: GoogleFonts.nunito(
                            fontSize: 48,
                            height: 1,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        style: WheelPickerStyle(
                          itemExtent: 48,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "You can always change this later.",
                style: GoogleFonts.nunito(
                  color: Color(0xff616161),
                  fontSize: 16,
                ),
              ),
              Spacer(),
              PushableButton(
                onPressed: () {
                  Get.to(Step18Page());
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
