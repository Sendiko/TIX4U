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
      child: Center(
        child: Text(
          widget.text,
          style: Styles.textStyle,
        ),
      ),
    ));
  }
}
