import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  List<String> images = [
    "assets/owl.png",
    "assets/squirrel.png",
    "assets/owl.png",
    "assets/squirrel.png",
  ];
  List<String> words = [
    "Búho",
    "Ardilla",
    "Búho",
    "Ardilla",
  ];
  List<String> translations = [
    "Owl",
    "Squirrel",
    "Owl",
    "Squirrel",
  ];

  bool autoplay = true;
  String voice = "Mateo";
  int speed = 1;
  List<String> voiceNames = [
    "Mateo",
    "Valeria",
    "Martín",
    "Lucía",
    "Leonardo",
    "Martina",
  ];
  List<String> voiceImages = [
    "assets/person_1.png",
    "assets/person_2.png",
    "assets/person_3.png",
    "assets/person_4.png",
    "assets/person_5.png",
    "assets/person_6.png",
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
          padding: EdgeInsets.all(0),
          child: Column(
            children: [
              Spacer(),
              CarouselSlider(
                items: List.generate(4, (index) {
                  return Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        // Text
                        Spacer(),
                        Image.asset(images[index]),
                        Spacer(),
                        // Speak button
                      ],
                    ),
                  );
                }),
                options: CarouselOptions(
                  aspectRatio: 350 / 500,
                  enlargeCenterPage: true,
                  viewportFraction: .8,
                  autoPlay: autoplay,
                  autoPlayInterval: Duration(seconds: 1),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          builder: (context) {
                            return Container(
                              padding: EdgeInsets.all(16),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: List.generate(6, (index) {
                                  return ListTile(
                                    onTap: () {
                                      voice = voiceNames[index];
                                      Get.back();
                                      setState(() {});
                                    },
                                    leading: Image.asset(voiceImages[index]),
                                    title: Text(voiceNames[index]),
                                    trailing:
                                        voice == voiceNames[index]
                                            ? Icon(Icons.check)
                                            : null,
                                  );
                                }),
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(color: Colors.white),
                        child: Text(voice),
                      ),
                    ),
                    Spacer(),
                    Text("Autoplay"),
                    Switch(
                      value: autoplay,
                      activeColor: Colors.red,
                      activeThumbColor: Colors.orange,
                      onChanged: (value) {
                        autoplay = value;
                        setState(() {});
                      },
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
