import 'package:flutter/material.dart';
import 'package:utils/utils.dart';

class OnboardingImage extends StatelessWidget {
  const OnboardingImage({
    super.key,
    required this.imgMaxWidth,
    required this.imgMaxHeight,
  });

  final double imgMaxWidth;
  final double imgMaxHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.topStart,
      height: context.mediaQuery.size.shortestSide,
      constraints: BoxConstraints(
        maxWidth: imgMaxWidth,
        maxHeight: imgMaxHeight,
      ),
      child: const Image(
        height: 567,
        width: 374,
        alignment: AlignmentDirectional.topStart,
        image: AssetImage(
          "images/onboarding.png",
          package: "onboarding",
        ),
      ),
    );
  }
}
