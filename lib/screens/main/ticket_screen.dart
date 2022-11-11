import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '/utils/styles.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({
    super.key,
    required this.text
  });
  final String text;

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title: Text(
          "My Tickets",
          style: Styles.headlineStyle1,
        ),
      ),
      body: PageView(
        children: [
          Container(
            color : Styles.backgroundColor,
            child: const Center(
              child: Text("Order ticket"),
            ),
          ),
          Container(
            color : Styles.backgroundColor,
            child: const Center(
              child: Text("Pre-Order ticket"),
            ),
          )
        ],
      )
    );
  }
}
