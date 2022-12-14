import 'package:etiket_mobile/screens/welcome/login_screen.dart';
import 'package:flutter/material.dart';

import '/utils/styles.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key, required this.text});
  final String text;

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Styles.backgroundColor,
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 56),
                child: Text(
                  "Profile",
                  style: Styles.headlineStyle2,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  "Login to your account or register by clicking the button below.",
                  style: Styles.smallerTextStyle,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 32),
                child: MaterialButton(
                  color: Styles.primaryContainerColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()
                      )
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      "Sign In",
                      style: Styles.buttonTextStyle,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
    );
  }
}
