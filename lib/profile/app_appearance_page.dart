import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:golingo_project_d8/profile/app_language_page.dart';
import 'package:google_fonts/google_fonts.dart';

class AppAppearancePage extends StatefulWidget {
  const AppAppearancePage({super.key});

  @override
  State<AppAppearancePage> createState() => _AppAppearancePageState();
}

class _AppAppearancePageState extends State<AppAppearancePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xffF5F5F5),
        surfaceTintColor: Color(0xffF5F5F5),
        centerTitle: true,
        title: Text(
          "App Appearance",
          style: GoogleFonts.nunito(
            color: Color(0xff212121),
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Color(0xffEEEEEE), width: 3),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) => Container(
                            width: 500,
                            padding: EdgeInsets.all(20),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  height: 3,
                                  width: 38,
                                  decoration: BoxDecoration(
                                    color: Color(0xffEEEEEE),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Text(
                            "Theme",
                            style: GoogleFonts.nunito(
                              fontSize: 20,
                              color: Color(0xff212121),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "Light",
                            style: GoogleFonts.nunito(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff212121),
                            ),
                          ),
                          SizedBox(width: 8),
                          Icon(CupertinoIcons.chevron_right),
                        ],
                      ),
                    ),
                    SizedBox(height: 12),
                    GestureDetector(
                      onTap: () {
                        Get.to(AppLanguagePage());
                      },
                      child: Row(
                        children: [
                          Text(
                            "App Language",
                            style: GoogleFonts.nunito(
                              fontSize: 20,
                              color: Color(0xff212121),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "English",
                            style: GoogleFonts.nunito(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff212121),
                            ),
                          ),
                          SizedBox(width: 8),
                          Icon(CupertinoIcons.chevron_right),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
