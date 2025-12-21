import 'package:flutter/material.dart';

class ProgressPage extends StatefulWidget {
  const ProgressPage({super.key});

  @override
  State<ProgressPage> createState() => _ProgressPageState();
}

class _ProgressPageState extends State<ProgressPage> {
  List<String> images = [
    "assets/progress_1.png", // Shining Star
    "assets/progress_2.png", // Consistent Learner
    "assets/progress_3.png", // Sentence Builder
    "assets/progress_4.png", // Perfect Score
    "assets/progress_5.png", // Persistent Performer
    "assets/progress_6.png", // Challenge Conqueror
    "assets/progress_7.png", // Night Owl
    "assets/progress_8.png", // Fast Learner
    "assets/progress_9.png", // Beginner's Luck
    "assets/progress_10.png", // Top of the Class
    "assets/progress_11.png", // Creative Contributor
    "assets/progress_12.png", // Well Done
    "assets/progress_13.png", // Quiz Whiz
    "assets/progress_14.png", // Speaking Star
    "assets/progress_15.png", // Milestone Achieved
    "assets/progress_16.png", // Halfway There
    "assets/progress_17.png", // Flashcard Champ
    "assets/progress_18.png", // Hot Streak
  ];

  List<String> names = [
    "Shining Star",
    "Consistent Learner",
    "Sentence Builder",
    "Perfect Score",
    "Persistent Performer",
    "Challenge Conqueror",
    "Night Owl",
    "Fast Learner",
    "Beginner's Luck",
    "Top of the Class",
    "Creative Contributor",
    "Well Done",
    "Quiz Whiz",
    "Speaking Star",
    "Milestone Achieved",
    "Halfway There",
    "Flashcard Champ",
    "Hot Streak",
  ];

  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      appBar: AppBar(), // todo
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Color(0xffFAFAFA),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          selectedTab = 0;
                          setState(() {});
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(
                              selectedTab == 0 ? 0xff068FFF : 0xffFAFAFA,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(child: Text("Insights")),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          selectedTab = 1;
                          setState(() {});
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(
                              selectedTab == 1 ? 0xff068FFF : 0xffFAFAFA,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(child: Text("Achievements")),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),
              if (selectedTab == 0)
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            helperWidget(24, "Longest streak"),
                            SizedBox(width: 4),
                            helperWidget(3, "Current streak"),
                            SizedBox(width: 4),
                            helperWidget(201, "Learning days"),
                          ],
                        ),
                        SizedBox(height: 12),
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Growth Area"),
                              Divider(),
                              Image.asset("assets/progress_stats.png"),
                            ],
                          ),
                        ),
                        SizedBox(height: 12),
                        Row(
                          children: [
                            helperWidget(475, "Lessons passed"),
                            SizedBox(width: 4),
                            helperWidget(209, "Perfect lessons"),
                            SizedBox(width: 4),
                            helperWidget(682, "Words spoken"),
                          ],
                        ),
                        SizedBox(height: 12),
                        Row(
                          children: [
                            helperWidget(475, "Lessons passed"),
                            SizedBox(width: 4),
                            helperWidget(209, "Perfect lessons"),
                            SizedBox(width: 4),
                            helperWidget(682, "Words spoken"),
                          ],
                        ),
                        SizedBox(height: 12),
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Learning Day History"),
                              Divider(),
                              Image.asset("assets/progress_calendar.png"),
                            ],
                          ),
                        ),
                        SizedBox(height: 12),
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Learning Time Spent"),
                              Divider(),
                              Image.asset("assets/progress_bars.png"),
                            ],
                          ),
                        ),
                        SizedBox(height: 12),
                      ],
                    ),
                  ),
                )
              else
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 0.8
                    ),
                    itemCount: images.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Image.asset(images[index], height: 90),
                          Text(names[index], textAlign: TextAlign.center)
                        ],
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

  Widget helperWidget(int number, String text) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              number.toString(),
              style: TextStyle(fontSize: 20),
            ),
            Text(text, style: TextStyle(fontSize: 10)),
          ],
        ),
      ),
    );
  }
}
