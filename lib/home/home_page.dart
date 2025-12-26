import 'package:chiclet/chiclet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:golingo_project_d8/home/home_detail_page.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Alignment getAlign(int number) {
    if (number == 0) {
      return Alignment.centerLeft;
    } else if (number == 1) {
      return Alignment.center;
    } else if (number == 2) {
      return Alignment.centerRight;
    } else {
      return Alignment.center;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView.builder(
            itemCount: 50,
            itemBuilder: (context, index) {
              if (index % 10 == 0) {
                return Container(
                  height: 78,
                  margin: EdgeInsets.only(bottom: 12, top: 12),
                  decoration: BoxDecoration(
                    color: Color(0xff9D28AC),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Chapter ${index ~/ 10 + 1}",
                        style: GoogleFonts.nunito(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Essential Lesson",
                        style: GoogleFonts.nunito(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                );
              } else {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 220,
                      child: Align(
                        alignment: getAlign(index % 4),
                        child: ChicletOutlinedAnimatedButton(
                          onPressed: () {
                            Get.to(HomeDetailPage());
                          },
                          width: 80,
                          height: 60,
                          buttonType: ChicletButtonTypes.oval,
                          buttonHeight: 8,
                          buttonColor: Color(0xffFF981F),
                          borderColor: Color(0xffFFC02D),
                          backgroundColor: Color(0xffFFC02D),
                          child: Icon(Icons.lock),
                        ),
                      ),
                    ),
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
