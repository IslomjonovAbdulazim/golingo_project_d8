import 'package:flutter/material.dart';

class Step14Page extends StatefulWidget {
  const Step14Page({super.key});

  @override
  State<Step14Page> createState() => _Step14PageState();
}

class _Step14PageState extends State<Step14Page> {
  final options = [
    'Travel ✈️',
    'Cooking 🔍',
    'Yoga 🧘',
    'Hiking 🏔️',
    'Movies 🎬',
    'Pets 🐱',
    'Photography 📷',
    'Gaming 🎮',
    'Music 🎵',
    'Painting 🎨',
    'Art 🎨',
    'Sports 🏀',
    'Fitness 💪',
    'Reading 📚',
    'Technology 📱',
    'Dancing 🍁',
    'Board Games 🎲',
    'Science 🔬',
    'Fashion 👗',
    'Gardening 🌱',
    'Coffee ☕',
    'Astronomy 🌟',
  ];
  final selected = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              // Status Bar (ortga qaytish tugmasi, liner progress indicator, 9/12)

              // Image, (Awesome! What topics do you like to talk about?)
              Expanded(
                child: Wrap(
                  children: options
                      .map(
                        (value) => GestureDetector(
                          onTap: () {
                            selected.add(value);
                            setState(() {});
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 8, bottom: 8),
                            padding: EdgeInsets.only(
                              left: 16,
                              top: 8,
                              right: 16,
                              bottom: 8,
                            ),
                            decoration: BoxDecoration(
                              color: selected.contains(value)
                                  ? Color(0xff068FFF)
                                  : Colors.white,
                              border: Border.all(color: Color(0xffE0E0E0)),
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Text(value),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
