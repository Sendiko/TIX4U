import 'package:flutter/cupertino.dart';

class HeaderImage extends StatelessWidget {
  const HeaderImage({
    super.key,
    required this.size,
  });
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fitHeight,
              image: AssetImage(
                  "assets/images/android_logo.png"
              )
          )
      ),
    );
  }
}
