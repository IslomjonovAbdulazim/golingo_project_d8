import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BillingPage extends StatefulWidget {
  const BillingPage({super.key});

  @override
  State<BillingPage> createState() => _BillingPageState();
}

class _BillingPageState extends State<BillingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xffF5F5F5),
        centerTitle: true,
        title: Text(
          "Billing & Subscriptions",
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
              Image.asset("assets/current_plan.png"),
              SizedBox(height: 8),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          "Your subscription will expire on Dec 22, 2025. Renew or cancel your subscription ",
                      style: GoogleFonts.nunito(
                        color: Color(0xff757575),
                        fontSize: 18,
                      ),
                    ),
                    TextSpan(
                      text: "here",
                      style: GoogleFonts.nunito(
                        color: Color(0xff068FFF),
                        fontSize: 18,
                      ),
                    ),
                    TextSpan(
                      text: ".",
                      style: GoogleFonts.nunito(
                        color: Color(0xff757575),
                        fontSize: 18,
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
