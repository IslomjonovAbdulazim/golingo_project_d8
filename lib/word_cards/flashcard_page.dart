import 'package:flutter/material.dart';

class FlashcardPage extends StatefulWidget {
  const FlashcardPage({super.key});

  @override
  State<FlashcardPage> createState() => _FlashcardPageState();
}

class _FlashcardPageState extends State<FlashcardPage> {
  List<String> words = [
    "Apple",
    "Apple",
    "Apple",
  ];
  List<String> images = [
    "assets/apple.png",
    "assets/apple.png",
    "assets/apple.png",
  ];

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
              SizedBox(height: 48),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              SizedBox(height: 48),
              Text("Tap to flip the card"),
              SizedBox(height: 48),
              Row(children: []),
              SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}
