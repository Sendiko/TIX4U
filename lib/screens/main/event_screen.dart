import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '/utils/styles.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({
    super.key,
    required this.text
  });
  final String text;

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          widget.text,
          style: Styles.textStyle,
        ),
      )
    );
  }
}
