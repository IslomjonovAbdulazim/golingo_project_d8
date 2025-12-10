import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BnbPage extends StatefulWidget {
  const BnbPage({super.key});

  @override
  State<BnbPage> createState() => _BnbPageState();
}

class _BnbPageState extends State<BnbPage> {
  List<Widget> pages = [
    Center(child: Text("Home Page")),
    Center(child: Text("Word Cards")),
    Center(child: Text("Leaderboard")),
    Center(child: Text("My progress")),
    Center(child: Text("Account")),
  ];
  int activePage = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[activePage],
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: GoogleFonts.nunito(
          fontSize: 10,
          color: Color(0xff068FFF),
        ),
        unselectedLabelStyle: GoogleFonts.nunito(
          fontSize: 10,
          color: Color(0xff9E9E9E),
        ),
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          activePage = value;
          setState(() {});
        },
        currentIndex: activePage,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/home.png", height: 24),
            label: "Home Page",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/word_cards.png", height: 24),
            label: "Word Cards",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/leaderboard.png", height: 24),
            label: "Leaderboard",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/my_progress.png", height: 24),
            label: "My Progress",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/profile.png", height: 24),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
