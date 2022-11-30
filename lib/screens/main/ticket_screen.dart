import 'package:flutter/material.dart';

import '/utils/styles.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key, required this.text});
  final String text;

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          children: [
            Container(
              color: Styles.backgroundColor,
              child: const Center(
                child: Text(
                  "Order ticket",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF6750A4),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Container(
              color: Styles.backgroundColor,
              child: const Center(
                child: Text(
                  "History",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF6750A4),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500),
                ),
              ),
            )
          ],
        ));
  }
}
