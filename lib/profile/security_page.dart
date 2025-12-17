import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecurityPage extends StatefulWidget {
  const SecurityPage({super.key});

  @override
  State<SecurityPage> createState() => _SecurityPageState();
}

class _SecurityPageState extends State<SecurityPage> {
  List<String> titles = [
    'Biometric ID',
    'Face ID',
    'SMS Authenticator',
    'Google Authenticator',
  ];

  List<bool> actives = [
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xffF5F5F5),
        centerTitle: true,
        title: Text(
          "Account & Security",
          style: GoogleFonts.nunito(
            color: Color(0xff212121),
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 8, bottom: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: List.generate(4, (index) {
                    return ListTile(
                      title: Text(titles[index]),
                      trailing: CupertinoSwitch(
                        value: actives[index],
                        onChanged: (value) {
                          actives[index] = value;
                          setState(() {});
                        },
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
