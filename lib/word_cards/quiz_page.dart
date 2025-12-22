import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pushable_button/pushable_button.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<String> images = [
    "assets/mariquita.png",
    "assets/pulgones.png",
  ];
  List<String> variants = [
    "Mariposa",
    "Mariquita",
    "Libélula",
    "Pulgones",
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xffF5F5F5),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(height: 30),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset(images[currentIndex]),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                height: 200,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 183 / 73,
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        bool correct;
                        if (index == 1) {
                          correct = true;
                        } else {
                          correct = false;
                        }
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          builder: (context) {
                            return Container(
                              decoration: BoxDecoration(
                                color: correct ? Colors.blue : Colors.red,
                              ),
                              padding: EdgeInsets.all(16),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 36,
                                        width: 36,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                            100,
                                          ),
                                        ),
                                        child:
                                            correct
                                                ? Icon(Icons.check)
                                                : Icon(Icons.close),
                                      ),
                                      SizedBox(width: 12),
                                      Text(
                                        correct ? "Correct!" : "Whoops!",
                                        style: GoogleFonts.nunito(
                                          fontSize: 24,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  if (correct == false) Text("Correct answer"),
                                  if (correct == false) Text(variants[1]),
                                  PushableButton(
                                    onPressed: () {
                                      currentIndex++;
                                      Get.back();
                                      setState(() {});
                                    },
                                    hslColor: HSLColor.fromColor(Colors.white),
                                    height: 56,
                                    elevation: 4,
                                    child: Text("Next"),
                                  ),
                                  SizedBox(height: 16),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(child: Text(variants[index])),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
