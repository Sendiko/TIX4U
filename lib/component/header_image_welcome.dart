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
              height: 186,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    child: ClipRRect(
                      borderRadius : BorderRadius.circular(8),
                      child: Container(
                        height: widget.imgSzSm,
                        width: widget.imgSzLg,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    "assets/images/concert_images/concert_images_1.jpg"
                                )
                            )
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    child: ClipRRect(
                      borderRadius : BorderRadius.circular(8),
                      child: Container(
                        height: widget.imgSzSm,
                        width: widget.imgSzLg,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    "assets/images/concert_images/concert_images_2.jpg"
                                )
                            )
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 8),
                    child: ClipRRect(
                      borderRadius : BorderRadius.circular(8),
                      child: Container(
                        height: widget.imgSzSm,
                        width: widget.imgSzLg,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    "assets/images/concert_images/concert_images_3.jpg"
                                )
                            )
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ),
            Container(
              padding: EdgeInsets.only(top: widget.topPadSm),
              height: 128,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    child: ClipRRect(
                      borderRadius : BorderRadius.circular(8),
                      child: Container(
                        height: widget.imgSzSm,
                        width: widget.imgSzLg,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    "assets/images/concert_images/concert_images_4.jpg"
                                )
                            )
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    child: ClipRRect(
                      borderRadius : BorderRadius.circular(8),
                      child: Container(
                        height: widget.imgSzSm,
                        width: widget.imgSzLg,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    "assets/images/concert_images/concert_images_5.jpg"
                                )
                            )
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 8),
                    child: ClipRRect(
                      borderRadius : BorderRadius.circular(8),
                      child: Container(
                        height: widget.imgSzSm,
                        width: widget.imgSzLg,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    "assets/images/concert_images/concert_images_6.jpg"
                                )
                            )
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ),
          ],
        )
    );
  }
}
