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
                  children: options.map((value) => Container(child: Text(value))).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
