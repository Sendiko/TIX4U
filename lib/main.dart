import 'package:etiket_mobile/screens/container/main_container.dart';
import 'package:etiket_mobile/screens/utils/styles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: Styles.primaryColor
      ),
      home: const MainContainer()
    );
  }
}