import 'package:flip_board/flip_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flip_card/controllers/flip_card_controllers.dart';
import 'package:flutter_flip_card/flipcard/flip_card.dart';
import 'package:flutter_flip_card/flutter_flip_card.dart';

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
  final flip = FlipCardController();
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
                child: GestureDetector(
                  onTap: () {
                    flip.flipcard();
                  },
                  child: FlipCard(
                    frontWidget: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(child: Text("Apple")),
                    ),
                    backWidget: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Image.asset("assets/apple.png"),
                    ),
                    controller: flip,
                    rotateSide: RotateSide.right,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text("Tap to flip the card"),
              SizedBox(height: 30),
              Row(children: []),
              SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}
