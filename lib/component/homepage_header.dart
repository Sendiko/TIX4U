import 'package:flutter/cupertino.dart';

import '../utils/styles.dart';
import 'header_image.dart';

class HomepageHeader extends StatefulWidget {
  const HomepageHeader({
    super.key,
    required this.name
    });
  final String name;

  @override
  State<HomepageHeader> createState() => _HomepageHeaderState();
}

class _HomepageHeaderState extends State<HomepageHeader> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, ${widget.name}!",
              style: Styles.headlineStyle2,
            ),
            Text(
              "Here's some music for you",
              style: Styles.headlineStyle3,
            ),
          ],
        ),
        const HeaderImage(size: 32)
      ],
    );
  }
}
