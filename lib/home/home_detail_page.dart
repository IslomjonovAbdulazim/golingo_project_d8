import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeDetailPage extends StatefulWidget {
  const HomeDetailPage({super.key});

  @override
  State<HomeDetailPage> createState() => _HomeDetailPageState();
}

class _HomeDetailPageState extends State<HomeDetailPage> {
  int current = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          if (current == 34) {
            Get.back();
            return;
          }
          current++;
          setState(() {});
        },
        child: Image.asset("assets/$current.png"),
      ),
    );
  }
}
