import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:golingo_project_d8/profile/app_appearance_page.dart';
import 'package:golingo_project_d8/profile/billing_page.dart';
import 'package:golingo_project_d8/profile/data_page.dart';
import 'package:golingo_project_d8/profile/help_support_page.dart';
import 'package:golingo_project_d8/profile/invite_page.dart';
import 'package:golingo_project_d8/profile/linked_accounts_page.dart';
import 'package:golingo_project_d8/profile/manage_courses_page.dart';
import 'package:golingo_project_d8/profile/notifications_page.dart';
import 'package:golingo_project_d8/profile/payment_methods_page.dart';
import 'package:golingo_project_d8/profile/preferences_page.dart';
import 'package:golingo_project_d8/profile/profile_edit_page.dart';
import 'package:golingo_project_d8/profile/rate_us_page.dart';
import 'package:golingo_project_d8/profile/security_page.dart';
import 'package:golingo_project_d8/profile/upgrade_plan_page.dart';

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
    PreferencesPage(),
    ManageCoursesPage(),
    NotificationsPage(),
    SecurityPage(),
    PaymentMethodsPage(),
    BillingPage(),
    LinkedAccountsPage(),
    AppAppearancePage(),
    DataPage(),
    HelpSupportPage(),
    InvitePage(),
    RateUsPage(),
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
              GestureDetector(
                onTap: () {
                  Get.to(UpgradePlanPage());
                },
                child: Image.asset("assets/premium_banner.png"),
              ),
              SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  Get.to(ProfileEditPage());
                },
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Flexible(
                fit: FlexFit.loose,
                child: Container(
                  padding: EdgeInsets.only(top: 8, bottom: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
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
