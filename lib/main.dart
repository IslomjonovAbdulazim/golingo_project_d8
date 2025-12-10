import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:golingo_project_d8/auth/sign_in_page.dart';
import 'package:golingo_project_d8/onboarding/step_20_page.dart';
import 'package:golingo_project_d8/onboarding/welcome_page.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(builder: (context) => MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInPage(),
    );
  }
}
