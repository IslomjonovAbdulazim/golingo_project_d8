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
                  children: [
                    Column(
                      children: List.generate(4, (index) {
                        return ListTile(
                          title: Text(
                            titles[index],
                            style: GoogleFonts.nunito(
                              color: Color(0xff212121),
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          trailing: CupertinoSwitch(
                            activeTrackColor: Color(0xff068FFF),
                            value: actives[index],
                            onChanged: (value) {
                              actives[index] = value;
                              setState(() {});
                            },
                          ),
                        );
                      }),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Change Password",
                                style: GoogleFonts.nunito(
                                  color: Color(0xff212121),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Spacer(),
                              Icon(CupertinoIcons.chevron_right),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Text(
                                "Device Management",
                                style: GoogleFonts.nunito(
                                  color: Color(0xff212121),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Spacer(),
                              Icon(CupertinoIcons.chevron_right),
                            ],
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Manage your account on the various devices you own.",
                            style: GoogleFonts.nunito(
                              fontSize: 16,
                              color: Color(0xff616161),
                            ),
                          ),
                        ],
                      ),
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
