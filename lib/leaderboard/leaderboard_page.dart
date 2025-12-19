import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LeaderboardPage extends StatefulWidget {
  const LeaderboardPage({super.key});

  @override
  State<LeaderboardPage> createState() => _LeaderboardPageState();
}

class _LeaderboardPageState extends State<LeaderboardPage> {
  List<int> ratingsWeekly = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
  ];

  List<String> namesWeekly = [
    "Isabella",
    "Andrew",
    "Evelyn",
    "Sophia",
    "William",
    "Abigail",
    "Oliver",
    "Emma",
    "James",
    "Mia",
    "Benjamin",
    "Charlotte",
    "Lucas",
    "Amelia",
    "Henry",
    "Harper",
    "Alexander",
    "Ella",
    "Daniel",
    "Avery",
  ];

  List<String> avatarsWeekly = [
    "https://api.dicebear.com/7.x/avataaars/png?seed=Isabella",
    "https://api.dicebear.com/7.x/avataaars/png?seed=Andrew",
    "https://api.dicebear.com/7.x/avataaars/png?seed=Evelyn",
    "https://api.dicebear.com/7.x/avataaars/png?seed=Sophia",
    "https://api.dicebear.com/7.x/avataaars/png?seed=William",
    "https://api.dicebear.com/7.x/avataaars/png?seed=Abigail",
    "https://api.dicebear.com/7.x/avataaars/png?seed=Oliver",
    "https://api.dicebear.com/7.x/avataaars/png?seed=Emma",
    "https://api.dicebear.com/7.x/avataaars/png?seed=James",
    "https://api.dicebear.com/7.x/avataaars/png?seed=Mia",
    "https://api.dicebear.com/7.x/avataaars/png?seed=Benjamin",
    "https://api.dicebear.com/7.x/avataaars/png?seed=Charlotte",
    "https://api.dicebear.com/7.x/avataaars/png?seed=Lucas",
    "https://api.dicebear.com/7.x/avataaars/png?seed=Amelia",
    "https://api.dicebear.com/7.x/avataaars/png?seed=Henry",
    "https://api.dicebear.com/7.x/avataaars/png?seed=Harper",
    "https://api.dicebear.com/7.x/avataaars/png?seed=Isabella",
    "https://api.dicebear.com/7.x/avataaars/png?seed=Andrew",
    "https://api.dicebear.com/7.x/avataaars/png?seed=Evelyn",
    "https://api.dicebear.com/7.x/avataaars/png?seed=Sophia",
  ];

  List<int> pointsWeekly = [
    1685,
    1627,
    1608,
    1580,
    1536,
    1495,
    1452,
    1410,
    1388,
    1360,
    1335,
    1300,
    1275,
    1240,
    1210,
    1185,
    1160,
    1130,
    1100,
    1075,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Container(
          height: 32,
          width: 32,
          color: Colors.red,
        ),
        title: Text(
          "Leaderboard",
          style: GoogleFonts.nunito(
            color: Color(0xff212121),
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          Icon(Icons.menu),
          SizedBox(width: 12),
        ],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                height: 40,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: Color(0xffF5F5F5),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff068FFF),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            "Weekly",
                            style: GoogleFonts.nunito(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          "Monthly",
                          style: GoogleFonts.nunito(fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          "Yearly",
                          style: GoogleFonts.nunito(fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),
              Expanded(
                child: ListView.builder(
                  itemCount: ratingsWeekly.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(namesWeekly[index]),
                      leading: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(ratingsWeekly[index].toString()),
                          SizedBox(width: 8),
                          Image.network(avatarsWeekly[index]),
                        ],
                      ),
                      trailing: Text("${pointsWeekly[index]} pt"),
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
}
