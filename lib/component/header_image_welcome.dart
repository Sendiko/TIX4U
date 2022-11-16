import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderImageWelcome extends StatefulWidget {

  const HeaderImageWelcome({
    super.key,
    required this.botPadLg,
    required this.botPadSm,
    required this.topPadSm,
    required this.topPadLg,
    required this.imgSzLg,
    required this.imgSzSm
  });

  final double botPadLg;
  final double botPadSm;
  final double topPadSm;
  final double topPadLg;
  final double imgSzLg;
  final double imgSzSm;

  @override
  State<HeaderImageWelcome> createState() => _HeaderImageWelcomeState();
}

class _HeaderImageWelcomeState extends State<HeaderImageWelcome> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(bottom: widget.botPadLg),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: widget.botPadSm, top: widget.topPadLg),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: widget.imgSzSm,
                    width: widget.imgSzSm,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: AssetImage(
                                "assets/images/concert_images/concert_image_1.png"
                            )
                        )
                    ),
                  ),
                  Container(
                    height: widget.imgSzLg,
                    width: widget.imgSzLg,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: AssetImage(
                                "assets/images/concert_images/concert_image_2.png"
                            )
                        )
                    ),
                  ),
                  Container(
                    height: widget.imgSzSm,
                    width: widget.imgSzSm,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: AssetImage(
                                "assets/images/concert_images/concert_image_3.png"
                            )
                        )
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: widget.topPadSm),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: widget.imgSzSm,
                    width: widget.imgSzSm,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: AssetImage(
                                "assets/images/concert_images/concert_image_4.png"
                            )
                        )
                    ),
                  ),
                  Container(
                    height: widget.imgSzLg,
                    width: widget.imgSzLg,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: AssetImage(
                                "assets/images/concert_images/concert_image_5.png"
                            )
                        )
                    ),
                  ),
                  Container(
                    height: widget.imgSzSm,
                    width: widget.imgSzSm,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: AssetImage(
                                "assets/images/concert_images/concert_image_6.png"
                            )
                        )
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
}
