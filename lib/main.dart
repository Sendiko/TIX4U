import 'package:etiket_mobile/screens/container/main_container.dart';
import 'package:flutter/material.dart';
import 'package:etiket_mobile/utils/color_schemes.dart';

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
            colorScheme: lightColorScheme
        ),
        darkTheme: ThemeData(
            useMaterial3: true,
            colorScheme: darkColorScheme
        ),
        home: const MainContainer()
    );
  }
}