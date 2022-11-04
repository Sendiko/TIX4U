import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '/utils/styles.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    super.key,
    required this.text
  });
  final String text;

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.primaryColor,
      body: Center(
        child:
        Text(
          widget.text,
          style: Styles.textStyle,
        ),
      )
    );
  }
}
