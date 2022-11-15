import 'package:etiket_mobile/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.name});
  final String name;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Styles.backgroundColor,
        title: Text(
          "Hi, ${widget.name}!",
          style: Styles.headlineStyle2,
        ),
      ),
      body: Container(
        color: Styles.backgroundColor,
      ),
    );
  }
}
