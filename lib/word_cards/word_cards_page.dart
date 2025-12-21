import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WordCardsPage extends StatefulWidget {
  const WordCardsPage({super.key});

  @override
  State<WordCardsPage> createState() => _WordCardsPageState();
}

class _WordCardsPageState extends State<WordCardsPage> {
  List<String> images = [
    "assets/card_1.png",
    "assets/card_2.png",
    "assets/card_3.png",
    "assets/card_4.png",
    "assets/card_5.png",
    "assets/card_6.png",
    "assets/card_7.png",
    "assets/card_8.png",
    "assets/card_9.png",
    "assets/card_10.png",
    "assets/card_11.png",
    "assets/card_12.png",
    "assets/card_13.png",
    "assets/card_14.png",
    "assets/card_14.png",
    "assets/card_14.png",
  ];
  List<String> names = [
    "Animal",
    "Fruit",
    "Number",
    "Insect",
    "Food",
    "Vegetable",
    "Color",
    "Marine Organism",
    "Transportation",
    "Body",
    "Bird",
    "Flower",
    "Home",
    "Kitchen",
    "Profession",
    "Sports",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xffF5F5F5),
        surfaceTintColor: Color(0xffF5F5F5),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
            ),
            itemCount: 16,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Color(0xffEEEEEE), width: 3),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12, top: 12),
                        child: Text(
                          names[index],
                          style: GoogleFonts.nunito(
                            fontSize: 20,
                            color: Color(0xff212121),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Image.asset(images[index]),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
