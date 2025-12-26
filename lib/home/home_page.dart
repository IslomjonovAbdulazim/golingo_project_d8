import 'package:chiclet/chiclet.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                return Padding(
                  padding: const EdgeInsets.only(top: 4, bottom: 4),
                  child: Row(
                    children: [
                      ChicletOutlinedAnimatedButton(
                        onPressed: () {},
                        width: 80,
                        height: 60,
                        buttonType: ChicletButtonTypes.oval,

                        child: Icon(Icons.lock),
                      ),
                    ],
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
