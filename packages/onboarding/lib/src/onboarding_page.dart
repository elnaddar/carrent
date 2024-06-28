import 'package:flutter/material.dart';
import 'package:onboarding/src/onboarding_image.dart';
import 'package:onboarding/src/onboarding_text.dart';
import 'package:utils/utils.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    const imgMaxWidth = 375 / 1.2;
    const imgMaxHeight = 567 / 1.2;
    final screenWidth = context.mediaQuery.size.width;
    late final Axis direction;
    late final SizedBox space;
    late final double columnWidth;
    if (screenWidth >= (imgMaxWidth * 3 + 25)) {
      direction = Axis.horizontal;
      space = const SizedBox(height: 24);
      columnWidth = screenWidth - (imgMaxWidth * 2);
    } else if (screenWidth >= (imgMaxWidth * 2 + 25)) {
      direction = Axis.horizontal;
      space = const SizedBox(height: 24);
      columnWidth = screenWidth - imgMaxWidth;
    } else {
      direction = Axis.vertical;
      space = const SizedBox(height: 10);
      columnWidth = screenWidth;
    }
    return Scaffold(
        body: ListView(
      scrollDirection: direction,
      children: [
        const OnboardingImage(
            imgMaxWidth: imgMaxWidth, imgMaxHeight: imgMaxHeight),
        OnboardingText(columnWidth: columnWidth, space: space)
      ],
    ));
  }
}
