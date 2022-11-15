import 'package:etiket_mobile/screens/container/main_container.dart';
import 'package:etiket_mobile/utils/styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Styles.backgroundColor,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    "See what's happening in your area",
                    style: Styles.headlineStyle3,
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.only(bottom: 16, left: 16, right: 16),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
                    style: Styles.textStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 64, right: 64, left: 64),
                  child: MaterialButton(
                      color: Styles.primaryContainerColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Get Started",
                              style: Styles.headlineStyle4,
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 8),
                              child: Icon(
                                FluentSystemIcons
                                    .ic_fluent_arrow_right_circle_filled,
                                size: 20,
                                color: Styles.primaryColor,
                              ),
                            )
                          ],
                        ),
                      ),
                      onPressed: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainContainer()))),
                ),
              ])),
    );
  }
}
