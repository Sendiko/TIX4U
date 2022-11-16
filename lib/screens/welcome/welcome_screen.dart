import 'package:etiket_mobile/utils/styles.dart';
import 'package:etiket_mobile/component/header_image_welcome.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import '../container/main_container.dart';

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
            const HeaderImageWelcome(
              botPadLg: 32,
              botPadSm: 16,
              topPadLg: 64,
              topPadSm: 16,
              imgSzLg: 128,
              imgSzSm: 102
            ),
            Container(
              padding: const EdgeInsets.only(top: 32, left: 52, right: 52),
              child: Text(
                "See What’s Happening In Your Area",
                style: Styles.headlineStyle3,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.only(bottom: 16, left: 52, right: 52),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
                style: Styles.smallerTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 72, right: 64, left: 64),
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
                    builder: (context) => const MainContainer()
                  )
                )
              ),
            ),
          ]
        )
      ),
    );
  }
}
