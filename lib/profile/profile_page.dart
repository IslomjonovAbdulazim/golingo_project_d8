import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<String> titles = [
    'Preferences',
    'Manage Courses',
    'Notification',
    'Account & Security',
    'Payment Methods',
    'Billing & Subscriptions',
    'Linked Accounts',
    'App Appearance',
    'Data & Analytics',
    'Help & Support',
    'Invite Your Friends',
    'Rate us',
    'Logout',
  ];

  List<Widget> icons = [
    Icon(Icons.settings_outlined),
    Icon(Icons.dashboard_outlined),
    Icon(Icons.notifications_outlined),
    Icon(Icons.security_outlined),
    Icon(Icons.credit_card_outlined),
    Icon(Icons.star_border),
    Icon(Icons.link),
    Icon(Icons.remove_red_eye_outlined),
    Icon(Icons.bar_chart_outlined),
    Icon(Icons.help_outline),
    Icon(Icons.person_add_outlined),
    Icon(Icons.star_outline),
    Icon(Icons.logout, color: Colors.red),
  ];

  List<Widget> pages = [
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Container(),
              Container(),
              Flexible(
                fit: FlexFit.loose,
                child: Container(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 13,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {
                          Get.to(pages[index]);
                        },
                        leading: icons[index],
                        title: Text(titles[index]),
                        trailing: Icon(Icons.chevron_right),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
