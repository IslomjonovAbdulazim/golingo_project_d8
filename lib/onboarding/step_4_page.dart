import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:golingo_project_d8/onboarding/step_5_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pushable_button/pushable_button.dart';

class Step4Page extends StatefulWidget {
  const Step4Page({super.key});

  @override
  State<Step4Page> createState() => _Step4PageState();
}

class _Step4PageState extends State<Step4Page> {
  List<String> images = [
    "assets/usa.png",
    "assets/arab.png",
    "assets/china.png",
    "assets/france.png",
    "assets/india.png",
    "assets/russia.png",
    "assets/spain.png",
  ];
  List<String> names = [
    "English",
    "Arabic",
    "Chinese",
    "French",
    "Indian",
    "Russian",
    "Spanish",
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        surfaceTintColor: Color(0xffFFFFFF),
        title: Expanded(
          child: SizedBox(
            height: 12,
            child: LinearProgressIndicator(
              borderRadius: BorderRadius.circular(16),
              value: 0.083,
              backgroundColor: Color(0xffEEEEEE),
              color: Color(0xff068FFF),
            ),
          ),
        ),
        actions: [
          Text(
            "1/12",
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
              Image.asset("assets/onboarding_2.png"),
              Expanded(
                child: ListView.builder(
                  itemCount: names.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        selectedIndex = index;
                        setState(() {});
                      },
                      child: Container(
                        padding: EdgeInsets.all(12),
                        margin: EdgeInsets.only(bottom: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xffFFFFFF),
                          border: Border.all(
                            color: (selectedIndex == index)?Color(0xff068FFF):Color(0xffEEEEEE),
                            width: 3,
                          ),
                        ),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                images[index],
                                width: 60,
                                height: 45,
                              ),
                            ),
                            SizedBox(width: 16),
                            Text(
                              names[index],
                              style: GoogleFonts.nunito(
                                color: Color(0xff212121),
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Spacer(),
                            if (selectedIndex == index)
                              Icon(
                                Icons.check,
                                color: Color(0xff068FFF),
                                size: 28,
                              ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              PushableButton(
                onPressed: () {
                  Get.to(Step5Page());
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
