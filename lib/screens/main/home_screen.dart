import 'package:etiket_mobile/screens/component/header_image.dart';
import 'package:etiket_mobile/screens/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
    required this.greeting
  });
  final String greeting;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.primaryColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 18, top: 24, right: 18),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.greeting,
                          style: Styles.headlineStyle3,
                        ),
                        Text(
                          "Book Tickets",
                          style: Styles.headlineStyle2,
                        ),
                      ],
                    ),
                    const HeaderImage(size: 48)
                  ],
                ),
              ]
            )
          )
        ],
      ),
    );
  }
}
